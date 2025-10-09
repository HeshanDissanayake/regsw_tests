#include "global.h"


Picture *top_pic;
Picture *bottom_pic;
Picture *frame_pic;
Picture *frame_pic_1;
Picture *frame_pic_2;
Picture *frame_pic_3;

// global picture format dependend buffers, mem allocation in image.c
imgpel **imgY_org;           //!< Reference luma image
imgpel ***imgUV_org;         //!< Reference chroma image
int    **img4Y_tmp;          //!< for quarter pel interpolation

unsigned int *yPicPos;
unsigned int *xPicPos;
unsigned int log2_max_frame_num_minus4;
unsigned int log2_max_pic_order_cnt_lsb_minus4;

int  me_tot_time,me_time;
pic_parameter_set_rbsp_t *active_pps;
seq_parameter_set_rbsp_t *active_sps;

// B pictures
// motion vector : forward, backward, direct
int  mb_adaptive;       //!< For MB level field/frame coding tools
int  MBPairIsField;     //!< For MB level field/frame coding tools


//Weighted prediction
int ***wp_weight;  // weight in [list][index][component] order
int ***wp_offset;  // offset in [list][index][component] order
int ****wbp_weight;  // weight in [list][fwd_index][bwd_idx][component] order
int luma_log_weight_denom;
int chroma_log_weight_denom;
int wp_luma_round;
int wp_chroma_round;

// global picture format dependend buffers, mem allocation in image.c (field picture)
imgpel   **imgY_org_top;
imgpel   **imgY_org_bot;

imgpel  ***imgUV_org_top;
imgpel  ***imgUV_org_bot;

imgpel   **imgY_org_frm;
imgpel  ***imgUV_org_frm;

imgpel   **imgY_com;               //!< Encoded luma images
imgpel  ***imgUV_com;              //!< Encoded croma images

char    ***direct_ref_idx;           //!< direct mode reference index buffer
short    **direct_pdir;              //!< direct mode reference index buffer

// Buffers for rd optimization with packet losses, Dim. Kontopodis
byte **pixel_map;   //!< Shows the latest reference frame that is reliable for each pixel
byte **refresh_map; //!< Stores the new values for pixel_map  
int intras;         //!< Counts the intra updates in each frame.

int  frame_ctr[5];
int  frame_no, nextP_tr_fld, nextP_tr_frm;
int  tot_time;



int writeIPCMBytes(Bitstream *currStream);
int writePCMByteAlign(Bitstream *currStream);
int  dct_luma_sp2(int pos_mb1,int pos_mb2,int *cnt_nonz);
int  dct_chroma_sp2(int ,int);
int check_for_SI16();
int **lrec ;
int ***lrec_uv;
int si_frame_indicator;
int sp2_frame_indicator;
int number_sp2_frames;
int giRDOpt_B8OnlyFlag;
int gaaiMBAFF_NZCoeff[4][12];


int Bytes_After_Header;
int rpc_bytes_to_go;
int rpc_bits_to_go;

FILE *p_stat;                    //!< status file for the last encoding session
FILE *p_log;                     //!< SNR file
FILE *p_trace;                   //!< Trace file
int  p_in;                       //!< original YUV file handle
int  p_dec;                      //!< decoded image file handle

char errortext[ET_SIZE]; //!< buffer for error message for exit with error()
int resTrans_R[16][16], resTrans_G[16][16], resTrans_B[16][16];
int rec_resR[16][16], rec_resG[16][16], rec_resB[16][16];
int mprRGB[3][16][16];
int dc_level[2][4][4], dc_level_temp[2][4][4];
int   cbp_chroma_block[2][4][4], cbp_chroma_block_temp[2][4][4];
char b8_ipredmode8x8[4][4], b8_intra_pred_modes8x8[16];


// InputParameters *input;
// ImageParameters *img;
// StatParameters  *stats;



GOP_DATA *gop_structure;
RD_DATA *rdopt; 
RD_DATA rddata_top_frame_mb, rddata_bot_frame_mb; //!< For MB level field/frame coding tools
RD_DATA rddata_top_field_mb, rddata_bot_field_mb; //!< For MB level field/frame coding tools
