#include <assert.h>
#include <stdbool.h>
#include <inttypes.h>

#include "minimap.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>


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

    load_input_data_from_file("data/chianing_input_data.bin", n, &loaded_max_dist_x, &loaded_max_dist_y, &loaded_bw, &loaded_max_skip, &loaded_max_iter, &loaded_min_cnt, &loaded_min_sc, &loaded_chn_pen_gap, &loaded_chn_pen_skip,
                        &loaded_is_cdna, &loaded_n_seg, &loaded_n, &loaded_a, &loaded_n_u, &loaded_u, &loaded_km);

    // printf("xx: %lu\n", loaded_a[999].y);

    uint64_t start = read_cycles();
    mm128_t *res = mg_lchain_dp(loaded_max_dist_x, loaded_max_dist_y, loaded_bw, loaded_max_skip, \
                                    loaded_max_iter, loaded_min_cnt, loaded_min_sc, loaded_chn_pen_gap, \
                                    loaded_chn_pen_skip, loaded_is_cdna, loaded_n_seg, n, &n_u_, &_u, km);
    uint64_t end = read_cycles();
    
    uint64_t time = end - start;

		
	printf("cycles: %llu \n", end - start);

	print_mm128_array(res, 20);
    printf("chaining done\n");
    return 0;
}
