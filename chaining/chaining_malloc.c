#include <assert.h>
#include <stdbool.h>
#include <inttypes.h>
#include "ksort.h"
#include "minimap.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "data.h"

#define MALLOC 0

#define MM_SEED_SEG_SHIFT  48
#define MM_SEED_SEG_MASK   (0xffULL<<(MM_SEED_SEG_SHIFT))

#define sort_key_128x(a) ((a).x)
KRADIX_SORT_INIT(128x, mm128_t, sort_key_128x, 8) 

#define kmalloc(km, size) malloc((size))
#define kcalloc(km, count, size) calloc((count), (size))
#define krealloc(km, ptr, size) realloc((ptr), (size))
#define kfree(km, ptr) free((ptr))

#define Kmalloc(km, type, cnt)       (kmalloc((km), (cnt) * sizeof(type)))
#define Kcalloc(km, type, cnt)       (kcalloc((km), (cnt), sizeof(type)))
#define Krealloc(km, type, ptr, cnt) (krealloc((km), (ptr), (cnt) * sizeof(type)))

static mm128_t *compact_a(void *km, int32_t n_u, uint64_t *u, int32_t n_v, int32_t *v, mm128_t *a)
{
	mm128_t *b, *w;
	uint64_t *u2;
	int64_t i, j, k;

	printf("n_v, %d\n", n_v);
	
	#if MALLOC
    	b = Kmalloc(km, mm128_t, n_v);
	#else
   		static mm128_t b_static[11];  // n_v is 11
    	b = b_static;
	#endif


	// write the result to b[]
	for (i = 0, k = 0; i < n_u; ++i) {
		int32_t k0 = k, ni = (int32_t)u[i];
		for (j = 0; j < ni; ++j)
			b[k++] = a[v[k0 + (ni - j - 1)]];
	}



	printf("n_u, %d\n", n_u);
	#if MALLOC
		w = Kmalloc(km, mm128_t, n_u); 
	#else
   		static mm128_t w_static[3];  // n_u 3
    	w = w_static;
	#endif

	// sort u[] and a[] by the target position, such that adjacent chains may be joined
	for (i = k = 0; i < n_u; ++i) {
		w[i].x = b[k].x, w[i].y = (uint64_t)k<<32|i;
		k += (int32_t)u[i];
	}
	radix_sort_128x(w, w + n_u);
	
	#if MALLOC
		u2 = Kmalloc(km, uint64_t, n_u);
	#else
   		static uint64_t u2_static[3];  // n_u 3
    	u2 = u2_static;
	#endif

	for (i = k = 0; i < n_u; ++i) {
		int32_t j = (int32_t)w[i].y, n = (int32_t)u[j];
		u2[i] = u[j];
		memcpy(&a[k], &b[w[i].y>>32], n * sizeof(mm128_t));
		k += n;
	}
	
	memcpy(u, u2, n_u * 8);
	memcpy(b, a, k * sizeof(mm128_t)); // write _a_ to _b_ and deallocate _a_ because _a_ is oversized, sometimes a lot
	
	return b;
}

static int64_t mg_chain_bk_end(int32_t max_drop, const mm128_t *z, const int32_t *f, const int64_t *p, int32_t *t, int64_t k)
{
	int64_t i = z[k].y, end_i = -1, max_i = i;
	int32_t max_s = 0;
	if (i < 0 || t[i] != 0) return i;
	do {
		int32_t s;
		t[i] = 2;
		end_i = i = p[i];
		s = i < 0? z[k].x : (int32_t)z[k].x - f[i];
		if (s > max_s) max_s = s, max_i = i;
		else if (max_s - s > max_drop) break;
	} while (i >= 0 && t[i] == 0);
	for (i = z[k].y; i >= 0 && i != end_i; i = p[i]) // reset modified t[]
		t[i] = 0;
	return max_i;
}

uint64_t *mg_chain_backtrack(void *km, int64_t n, const int32_t *f, const int64_t *p, int32_t *v, int32_t *t, int32_t min_cnt, int32_t min_sc, int32_t max_drop, int32_t *n_u_, int32_t *n_v_)
{
	mm128_t *z;
	uint64_t *u;
	int64_t i, k, n_z, n_v;
	int32_t n_u;

	*n_u_ = *n_v_ = 0;
	for (i = 0, n_z = 0; i < n; ++i) // precompute n_z
		if (f[i] >= min_sc) ++n_z;
	if (n_z == 0) return 0;


	printf("n_z, %ld\n", n_z);
	#if MALLOC
		z = Kmalloc(km, mm128_t, n_z); 
	#else
   		static mm128_t z_static[495];  // n_z 495
    	z = z_static;
	#endif

	
	
	for (i = 0, k = 0; i < n; ++i) // populate z[]
		if (f[i] >= min_sc) z[k].x = f[i], z[k++].y = i;
	radix_sort_128x(z, z + n_z);

	memset(t, 0, n * 4);
	for (k = n_z - 1, n_v = n_u = 0; k >= 0; --k) { // precompute n_u
		if (t[z[k].y] == 0) {
			int64_t n_v0 = n_v, end_i;
			int32_t sc;
			end_i = mg_chain_bk_end(max_drop, z, f, p, t, k);
			for (i = z[k].y; i != end_i; i = p[i])
				++n_v, t[i] = 1;
			sc = i < 0? z[k].x : (int32_t)z[k].x - f[i];
			if (sc >= min_sc && n_v > n_v0 && n_v - n_v0 >= min_cnt)
				++n_u;
			else n_v = n_v0;
		}
	}

	printf("n_u, %d\n", n_u);
	#if MALLOC
		u = Kmalloc(km, uint64_t, n_u);
	#else
   		static uint64_t u_static[3];  // n_u 3
    	u = u_static;
	#endif

	memset(t, 0, n * 4);
	for (k = n_z - 1, n_v = n_u = 0; k >= 0; --k) { // populate u[]
		if (t[z[k].y] == 0) {
			int64_t n_v0 = n_v, end_i;
			int32_t sc;
			end_i = mg_chain_bk_end(max_drop, z, f, p, t, k);
			for (i = z[k].y; i != end_i; i = p[i])
				v[n_v++] = i, t[i] = 1;
			sc = i < 0? z[k].x : (int32_t)z[k].x - f[i];
			if (sc >= min_sc && n_v > n_v0 && n_v - n_v0 >= min_cnt)
				u[n_u++] = (uint64_t)sc << 32 | (n_v - n_v0);
			else n_v = n_v0;
		}
	}
	// kfree(km, z);
	assert(n_v < INT32_MAX);
	*n_u_ = n_u, *n_v_ = n_v;
	return u;
}



static inline float mg_log2(float x) // NB: this doesn't work when x<2
{
	// float log_2 = 0;
	union { float f; uint32_t i; } z = { x };
	float log_2 = ((z.i >> 23) & 255) - 128;
	z.i &= ~(255 << 23);
	z.i += 127 << 23;
	log_2 += (-0.34484843f * z.f + 2.02466578f) * z.f - 0.67487759f;
	return log_2;
}

static inline int32_t comput_sc(const mm128_t *ai, const mm128_t *aj, int32_t max_dist_x, int32_t max_dist_y, int32_t bw, float chn_pen_gap, float chn_pen_skip, int is_cdna, int n_seg)
{
	int32_t dq = (int32_t)ai->y - (int32_t)aj->y, dr, dd, dg, q_span, sc;
	

	// int32_t aiy = (int32_t)ai->y;
	// int32_t ajy = (int32_t)aj->y;
	// int32_t dq = aiy - ajy;
	// int32_t dr, dd, dg, q_span, sc;

	int32_t sidi = (ai->y & MM_SEED_SEG_MASK) >> MM_SEED_SEG_SHIFT;
	int32_t sidj = (aj->y & MM_SEED_SEG_MASK) >> MM_SEED_SEG_SHIFT;
	if (dq <= 0 || dq > max_dist_x) return INT32_MIN;
	dr = (int32_t)(ai->x - aj->x);
	if (sidi == sidj && (dr == 0 || dq > max_dist_y)) return INT32_MIN;
	dd = dr > dq? dr - dq : dq - dr;
	if (sidi == sidj && dd > bw) return INT32_MIN;
	if (n_seg > 1 && !is_cdna && sidi == sidj && dr > max_dist_y) return INT32_MIN;
	dg = dr < dq? dr : dq;
	q_span = aj->y>>32&0xff;
	sc = q_span < dg? q_span : dg;
	if (dd || dg > q_span) {
		float lin_pen, log_pen;
		lin_pen = chn_pen_gap * (float)dd + chn_pen_skip * (float)dg;
		log_pen = dd >= 1? mg_log2(dd + 1) : 0.0f; // mg_log2() only works for dd>=2
		if (is_cdna || sidi != sidj) {
			if (sidi != sidj && dr == 0) ++sc; // possibly due to overlapping paired ends; give a minor bonus
			else if (dr > dq || sidi != sidj) sc -= (int)(lin_pen < log_pen? lin_pen : log_pen); // deletion or jump between paired ends
			else sc -= (int)(lin_pen + .5f * log_pen);
		} else sc -= (int)(lin_pen + .5f * log_pen);
	}
	return sc;
}

mm128_t *mg_lchain_dp(int max_dist_x, int max_dist_y, int bw, int max_skip, int max_iter, int min_cnt, int min_sc, float chn_pen_gap, float chn_pen_skip,
					  int is_cdna, int n_seg, int64_t n, mm128_t *a, int *n_u_, uint64_t **_u, void *km)

// mm128_t *mg_lchain_dp()

{ // TODO: make sure this works when n has more than 32 bits

    // ...existing code...
    printf("max_dist_x: %d\n", max_dist_x);
    printf("max_dist_y: %d\n", max_dist_y);
    printf("bw: %d\n", bw);
    printf("max_skip: %d\n", max_skip);
    printf("max_iter: %d\n", max_iter);
    printf("min_cnt: %d\n", min_cnt);
    printf("min_sc: %d\n", min_sc);
    printf("chn_pen_gap: %.2f\n", chn_pen_gap);
    printf("chn_pen_skip: %.2f\n", chn_pen_skip);
    printf("is_cdna: %d\n", is_cdna);
    printf("n_seg: %d\n", n_seg);
    printf("n: %ld\n", n);
    printf("a: %p\n", (void*)a);
    printf("n_u_: %p\n", (void*)n_u_);
    printf("_u: %p\n", (void*)*_u);
    printf("km: %p\n", km);
    // ...existing code...

	int32_t *f, *t, *v, n_u, n_v, mmax_f = 0, max_drop = bw;
	int64_t *p, i, j, *dd, max_ii, st = 0;
	uint64_t *u;

	if (_u) *_u = 0, *n_u_ = 0;
	if (n == 0 || a == 0) {
		kfree(km, a);
		return 0;
	}
	if (max_dist_x < bw) max_dist_x = bw;
	if (max_dist_y < bw && !is_cdna) max_dist_y = bw;
	if (is_cdna) max_drop = INT32_MAX;


	printf("n, %ld\n", n);
	#if MALLOC
		p = Kmalloc(km, 8, n);
		f = Kmalloc(km, 4, n);
		v = Kmalloc(km, 4, n);
		t = Kcalloc(km, 4, n);
	#else

		// Static arrays for each allocation
		static int64_t p_static[1000];
		static int32_t f_static[1000];
		static int32_t v_static[1000];
		static int32_t t_static[1000];  // Will simulate calloc below

		// Simulate calloc for t_static: clear the array each time this function is called.
		memset(t_static, 0, 1000 * sizeof(int32_t));

		p = p_static;
		f = f_static;
		v = v_static;
		t = t_static;


	#endif

	int32_t test = 0;
	// fill the score and backtrack arrays
    #pragma GCC unroll 4 
	for (i = 0, max_ii = -1; i < n; ++i) { 
		int64_t max_j = -1, end_j;
		int32_t max_f = a[i].y>>32&0xff, n_skip = 0;
		// printf("%ld\n",i);
		while (st < i && (a[i].x>>32 != a[st].x>>32 || a[i].x > a[st].x + max_dist_x)) ++st;
		if (i - st > max_iter) st = i - max_iter;
        for (j = i - 1; j >= st; --j) {
			int32_t sc;
			sc = comput_sc(&a[i], &a[j], max_dist_x, max_dist_y, bw, chn_pen_gap, chn_pen_skip, is_cdna, n_seg);
			if (sc == INT32_MIN) continue;
			sc += f[j];
			if (sc > max_f) {
				max_f = sc, max_j = j;
				if (n_skip > 0) --n_skip;
			} else if (t[j] == (int32_t)i) {
				if (++n_skip > max_skip)
					break;
			}
			if (p[j] >= 0) t[p[j]] = i;
		}
		end_j = j;
		if (max_ii < 0 || a[i].x - a[max_ii].x > (int64_t)max_dist_x) {
			int32_t max = INT32_MIN;
			max_ii = -1;
			for (j = i - 1; j >= st; --j)
				if (max < f[j]) max = f[j], max_ii = j;
		}
		if (max_ii >= 0 && max_ii < end_j) {
			int32_t tmp;
			tmp = comput_sc(&a[i], &a[max_ii], max_dist_x, max_dist_y, bw, chn_pen_gap, chn_pen_skip, is_cdna, n_seg);
			test = tmp;
			if (tmp != INT32_MIN && max_f < tmp + f[max_ii])
				max_f = tmp + f[max_ii], max_j = max_ii;
		}
		f[i] = max_f, p[i] = max_j;
		v[i] = max_j >= 0 && v[max_j] > max_f? v[max_j] : max_f; // v[] keeps the peak score up to i; f[] is the score ending at i, not always the peak
		if (max_ii < 0 || (a[i].x - a[max_ii].x <= (int64_t)max_dist_x && f[max_ii] < f[i]))
			max_ii = i;
		if (mmax_f < max_f) mmax_f = max_f;
		
	}
	u = mg_chain_backtrack(km, n, f, p, v, t, min_cnt, min_sc, max_drop, &n_u, &n_v);
	*n_u_ = n_u, *_u = u; // NB: note that u[] may not be sorted by score here

	if (n_u == 0) {
		return 0;
	}


    mm128_t *res;
	res =  compact_a(km, n_u, u, n_v, v, a);

	return res;
}

#include <stdio.h>
#include <stdint.h>
#include <limits.h>

// Add function prototypes for any custom functions used in your code
// e.g., comput_sc, mg_chain_backtrack, kfree, Kmalloc, Kcalloc, compact_a, etc.


void print_mm128_array(mm128_t *array, int32_t size) {
    for (int32_t i = 0; i < size; i++) {
        printf("%d: x = %llu, y = %llu\n", i, (unsigned long long)array[i].x, (unsigned long long)array[i].y);
    }
}


int main(int argc, char *argv[]){
	// Load the data from the file
    int loaded_max_dist_x, loaded_max_dist_y, loaded_bw, loaded_max_skip, loaded_max_iter, loaded_min_cnt, loaded_min_sc, loaded_is_cdna, loaded_n_seg;
    int64_t loaded_n;
    mm128_t *loaded_a;
    int loaded_n_u;
    uint64_t *loaded_u;
    float loaded_chn_pen_gap, loaded_chn_pen_skip;
    void *loaded_km;
	void *km;
    int n_u_;
    uint64_t *_u;
	

    int max_dist_x = 5000;
    int max_dist_y = 5000;
    int bw = 500;
    int max_skip = 25;
    int max_iter = 5000;
    int min_cnt = 3;
    int min_sc = 40;
    float chn_pen_gap = 0.120000;
    float chn_pen_skip = 0.000000;
    int is_cdna = 0;
    int n_seg = 1;


	//user defined	
	int64_t n = 1000;


    mm128_t *res = mg_lchain_dp(max_dist_x, max_dist_y, bw, max_skip, max_iter, min_cnt, min_sc, chn_pen_gap, chn_pen_skip, is_cdna, n_seg, n, sta, &n_u_, &_u, km);
    
  
	print_mm128_array(res, 11);
    printf("chaining done\n");
    return 0;
}
