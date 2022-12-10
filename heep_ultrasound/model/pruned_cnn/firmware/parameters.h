#ifndef PARAMETERS_H_
#define PARAMETERS_H_

#include "ap_int.h"
#include "ap_fixed.h"

#include "nnet_utils/nnet_helpers.h"
//hls-fpga-machine-learning insert includes
#include "nnet_utils/nnet_activation.h"
#include "nnet_utils/nnet_activation_stream.h"
#include "nnet_utils/nnet_conv1d.h"
#include "nnet_utils/nnet_conv1d_stream.h"
#include "nnet_utils/nnet_dense.h"
#include "nnet_utils/nnet_dense_compressed.h"
#include "nnet_utils/nnet_dense_stream.h"
#include "nnet_utils/nnet_pooling.h"
#include "nnet_utils/nnet_pooling_stream.h"
 
//hls-fpga-machine-learning insert weights
#include "weights/w2.h"
#include "weights/b2.h"
#include "weights/w6.h"
#include "weights/b6.h"
#include "weights/w11.h"
#include "weights/b11.h"
#include "weights/w14.h"
#include "weights/b14.h"

//hls-fpga-machine-learning insert layer-config
// conv1d
struct config2_mult : nnet::dense_config {
    static const unsigned n_in = 128;
    static const unsigned n_out = 32;
    static const unsigned reuse_factor = 4;
    static const unsigned strategy = nnet::resource;
    typedef ap_fixed<16,6> accum_t;
    typedef conv1d_bias_t bias_t;
    typedef conv1d_weight_t weight_t;
    template<class x_T, class y_T, class res_T>
    using product = nnet::product::mult<x_T, y_T, res_T>;
};

struct config2 : nnet::conv1d_config {
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned in_width = 35000;
    static const unsigned n_chan = N_INPUT_2_1;
    static const unsigned filt_width = 128;
    static const unsigned kernel_size = filt_width;
    static const unsigned n_filt = N_FILT_2;
    static const unsigned stride_width = 32;
    static const unsigned dilation = 1;
    static const unsigned out_width = N_OUTPUTS_2;
    static const unsigned reuse_factor = 4;
    static const unsigned n_zeros = 2048;
    static const bool store_weights_in_bram = false;
    static const unsigned strategy = nnet::resource;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned min_width = 225;
    static const ap_uint<filt_width> pixels[min_width];
    typedef ap_fixed<16,6> accum_t;
    typedef conv1d_bias_t bias_t;
    typedef conv1d_weight_t weight_t;
    typedef config2_mult mult_config;
};
const ap_uint<config2::filt_width> config2::pixels[] = {1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384,32768,65536,131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432,67108864,134217728,268435456,536870912,1073741824,2147483648,4294967297,8589934594,17179869188,34359738376,68719476752,137438953504,274877907008,549755814016,1099511628032,2199023256064,4398046512128,8796093024256,17592186048512,35184372097024,70368744194048,140737488388096,281474976776192,562949953552384,1125899907104768,2251799814209536,4503599628419072,9007199256838144,18014398513676288,36028797027352576,72057594054705152,144115188109410304,288230376218820608,576460752437641216,1152921504875282432,2305843009750564864,4611686019501129728,9223372039002259456,18446744078004518913,36893488156009037826,73786976312018075652,147573952624036151304,295147905248072302608,590295810496144605216,1180591620992289210432,2361183241984578420864,4722366483969156841728,9444732967938313683456,18889465935876627366912,37778931871753254733824,75557863743506509467648,151115727487013018935296,302231454974026037870592,604462909948052075741184,1208925819896104151482368,2417851639792208302964736,4835703279584416605929472,9671406559168833211858944,19342813118337666423717888,38685626236675332847435776,77371252473350665694871552,154742504946701331389743104,309485009893402662779486208,618970019786805325558972416,1237940039573610651117944832,2475880079147221302235889664,4951760158294442604471779328,9903520316588885208943558656,19807040633177770417887117312,39614081266355540835774234624,79228162532711081671548469249,158456325065422163343096938498,316912650130844326686193876996,633825300261688653372387753992,1267650600523377306744775507984,2535301201046754613489551015968,5070602402093509226979102031936,10141204804187018453958204063872,20282409608374036907916408127744,40564819216748073815832816255488,81129638433496147631665632510976,162259276866992295263331265021952,324518553733984590526662530043904,649037107467969181053325060087808,1298074214935938362106650120175616,2596148429871876724213300240351232,5192296859743753448426600480702464,10384593719487506896853200961404928,20769187438975013793706401922809856,41538374877950027587412803845619712,83076749755900055174825607691239424,166153499511800110349651215382478848,332306999023600220699302430764957696,664613998047200441398604861529915392,1329227996094400882797209723059830784,2658455992188801765594419446119661568,5316911984377603531188838892239323136,10633823968755207062377677784478646272,21267647937510414124755355568957292544,42535295875020828249510711137914585088,85070591750041656499021422275829170176,170141183500083312998042844551658340352,79228162532711081671548469248,158456325065422163343096938496,316912650130844326686193876992,633825300261688653372387753984,1267650600523377306744775507968,2535301201046754613489551015936,5070602402093509226979102031872,10141204804187018453958204063744,20282409608374036907916408127488,40564819216748073815832816254976,81129638433496147631665632509952,162259276866992295263331265019904,324518553733984590526662530039808,649037107467969181053325060079616,1298074214935938362106650120159232,2596148429871876724213300240318464,5192296859743753448426600480636928,10384593719487506896853200961273856,20769187438975013793706401922547712,41538374877950027587412803845095424,83076749755900055174825607690190848,166153499511800110349651215380381696,332306999023600220699302430760763392,664613998047200441398604861521526784,1329227996094400882797209723043053568,2658455992188801765594419446086107136,5316911984377603531188838892172214272,10633823968755207062377677784344428544,21267647937510414124755355568688857088,42535295875020828249510711137377714176,85070591750041656499021422274755428352,170141183500083312998042844549510856704,79228162532711081667253501952,158456325065422163334507003904,316912650130844326669014007808,633825300261688653338028015616,1267650600523377306676056031232,2535301201046754613352112062464,5070602402093509226704224124928,10141204804187018453408448249856,20282409608374036906816896499712,40564819216748073813633792999424,81129638433496147627267585998848,162259276866992295254535171997696,324518553733984590509070343995392,649037107467969181018140687990784,1298074214935938362036281375981568,2596148429871876724072562751963136,5192296859743753448145125503926272,10384593719487506896290251007852544,20769187438975013792580502015705088,41538374877950027585161004031410176,83076749755900055170322008062820352,166153499511800110340644016125640704,332306999023600220681288032251281408,664613998047200441362576064502562816,1329227996094400882725152129005125632,2658455992188801765450304258010251264,5316911984377603530900608516020502528,10633823968755207061801217032041005056,21267647937510414123602434064082010112,42535295875020828247204868128164020224,85070591750041656494409736256328040448,170141183500083312988819472512656080896,79228162514264337593543950336,158456325028528675187087900672,316912650057057350374175801344,633825300114114700748351602688,1267650600228229401496703205376,2535301200456458802993406410752,5070602400912917605986812821504,10141204801825835211973625643008,20282409603651670423947251286016,40564819207303340847894502572032,81129638414606681695789005144064,162259276829213363391578010288128,324518553658426726783156020576256,649037107316853453566312041152512,1298074214633706907132624082305024,2596148429267413814265248164610048,5192296858534827628530496329220096,10384593717069655257060992658440192,20769187434139310514121985316880384,41538374868278621028243970633760768,83076749736557242056487941267521536,166153499473114484112975882535043072,332306998946228968225951765070086144,664613997892457936451903530140172288,1329227995784915872903807060280344576,2658455991569831745807614120560689152,5316911983139663491615228241121378304,10633823966279326983230456482242756608,21267647932558653966460912964485513216,42535295865117307932921825928971026432,85070591730234615865843651857942052864,170141183460469231731687303715884105728,0};

// conv1d_linear
struct linear_config3 : nnet::activ_config {
    static const unsigned n_in = N_OUTPUTS_2*N_FILT_2;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 4;
    typedef ap_fixed<18,8> table_t;
};

// re_lu
struct ReLU_config4 : nnet::activ_config {
    static const unsigned n_in = N_OUTPUTS_2*N_FILT_2;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 4;
    typedef ap_fixed<18,8> table_t;
};

// average_pooling1d
struct config5 : nnet::pooling1d_config {
    static const unsigned n_in = N_OUTPUTS_2;
    static const unsigned n_out = N_OUTPUTS_5;
    static const unsigned n_filt = N_FILT_5;
    static const unsigned pool_width = 2;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned stride_width = 2;
    static const nnet::Pool_Op pool_op = nnet::Average;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned reuse = 4;
    static const unsigned filt_width = 2;
    static const unsigned n_chan = N_FILT_5;
    typedef ap_fixed<16,6> accum_t;
};

// conv1d_1
struct config6_mult : nnet::dense_config {
    static const unsigned n_in = 2048;
    static const unsigned n_out = 32;
    static const unsigned reuse_factor = 4;
    static const unsigned strategy = nnet::resource;
    typedef ap_fixed<16,6> accum_t;
    typedef conv1d_1_bias_t bias_t;
    typedef conv1d_1_weight_t weight_t;
    template<class x_T, class y_T, class res_T>
    using product = nnet::product::mult<x_T, y_T, res_T>;
};

struct config6 : nnet::conv1d_config {
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned in_width = 545;
    static const unsigned n_chan = N_FILT_5;
    static const unsigned filt_width = 64;
    static const unsigned kernel_size = filt_width;
    static const unsigned n_filt = N_FILT_6;
    static const unsigned stride_width = 16;
    static const unsigned dilation = 1;
    static const unsigned out_width = N_OUTPUTS_6;
    static const unsigned reuse_factor = 4;
    static const unsigned n_zeros = 32768;
    static const bool store_weights_in_bram = false;
    static const unsigned strategy = nnet::resource;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned min_width = 113;
    static const ap_uint<filt_width> pixels[min_width];
    typedef ap_fixed<16,6> accum_t;
    typedef conv1d_1_bias_t bias_t;
    typedef conv1d_1_weight_t weight_t;
    typedef config6_mult mult_config;
};
const ap_uint<config6::filt_width> config6::pixels[] = {1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384,32768,65537,131074,262148,524296,1048592,2097184,4194368,8388736,16777472,33554944,67109888,134219776,268439552,536879104,1073758208,2147516416,4295032833,8590065666,17180131332,34360262664,68720525328,137441050656,274882101312,549764202624,1099528405248,2199056810496,4398113620992,8796227241984,17592454483968,35184908967936,70369817935872,140739635871744,281479271743489,562958543486978,1125917086973956,2251834173947912,4503668347895824,9007336695791648,18014673391583296,36029346783166592,72058693566333184,144117387132666368,288234774265332736,576469548530665472,1152939097061330944,2305878194122661888,4611756388245323776,9223512776490647552,281479271743488,562958543486976,1125917086973952,2251834173947904,4503668347895808,9007336695791616,18014673391583232,36029346783166464,72058693566332928,144117387132665856,288234774265331712,576469548530663424,1152939097061326848,2305878194122653696,4611756388245307392,9223512776490614784,281479271677952,562958543355904,1125917086711808,2251834173423616,4503668346847232,9007336693694464,18014673387388928,36029346774777856,72058693549555712,144117387099111424,288234774198222848,576469548396445696,1152939096792891392,2305878193585782784,4611756387171565568,9223512774343131136,281474976710656,562949953421312,1125899906842624,2251799813685248,4503599627370496,9007199254740992,18014398509481984,36028797018963968,72057594037927936,144115188075855872,288230376151711744,576460752303423488,1152921504606846976,2305843009213693952,4611686018427387904,9223372036854775808,0};

// conv1d_1_linear
struct linear_config7 : nnet::activ_config {
    static const unsigned n_in = N_OUTPUTS_6*N_FILT_6;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 4;
    typedef ap_fixed<18,8> table_t;
};

// re_lu_1
struct ReLU_config8 : nnet::activ_config {
    static const unsigned n_in = N_OUTPUTS_6*N_FILT_6;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 4;
    typedef ap_fixed<18,8> table_t;
};

// average_pooling1d_1
struct config9 : nnet::pooling1d_config {
    static const unsigned n_in = N_OUTPUTS_6;
    static const unsigned n_out = N_OUTPUTS_9;
    static const unsigned n_filt = N_FILT_9;
    static const unsigned pool_width = 2;
    static const unsigned pad_left = 0;
    static const unsigned pad_right = 0;
    static const unsigned stride_width = 2;
    static const nnet::Pool_Op pool_op = nnet::Average;
    static const nnet::conv_implementation implementation = nnet::conv_implementation::linebuffer;
    static const unsigned reuse = 4;
    static const unsigned filt_width = 2;
    static const unsigned n_chan = N_FILT_9;
    typedef ap_fixed<16,6> accum_t;
};

// dense
struct config11 : nnet::dense_config {
    static const unsigned n_in = N_SIZE_1_10;
    static const unsigned n_out = N_LAYER_11;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned strategy = nnet::resource;
    static const unsigned reuse_factor = 4;
    static const unsigned n_zeros = 2160;
    static const unsigned n_nonzeros = 2160;
    static const bool store_weights_in_bram = false;
    typedef ap_fixed<16,6> accum_t;
    typedef dense_bias_t bias_t;
    typedef dense_weight_t weight_t;
    typedef ap_uint<1> index_t;
    template<class x_T, class y_T, class res_T>
    using product = nnet::product::mult<x_T, y_T, res_T>;
};

// dense_linear
struct linear_config12 : nnet::activ_config {
    static const unsigned n_in = N_LAYER_11;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 4;
    typedef ap_fixed<18,8> table_t;
};

// re_lu_2
struct ReLU_config13 : nnet::activ_config {
    static const unsigned n_in = N_LAYER_11;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 4;
    typedef ap_fixed<18,8> table_t;
};

// output_dense
struct config14 : nnet::dense_config {
    static const unsigned n_in = N_LAYER_11;
    static const unsigned n_out = N_LAYER_14;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned strategy = nnet::resource;
    static const unsigned reuse_factor = 3;
    static const unsigned n_zeros = 0;
    static const unsigned n_nonzeros = 27;
    static const bool store_weights_in_bram = false;
    typedef ap_fixed<16,6> accum_t;
    typedef output_dense_bias_t bias_t;
    typedef output_dense_weight_t weight_t;
    typedef ap_uint<1> index_t;
    template<class x_T, class y_T, class res_T>
    using product = nnet::product::mult<x_T, y_T, res_T>;
};

// output_dense_linear
struct linear_config15 : nnet::activ_config {
    static const unsigned n_in = N_LAYER_14;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 4;
    typedef ap_fixed<18,8> table_t;
};

// output_softmax
struct Softmax_config16 : nnet::activ_config {
    static const unsigned n_in = N_LAYER_14;
    static const unsigned table_size = 1024;
    static const unsigned io_type = nnet::io_stream;
    static const unsigned reuse_factor = 4;
    static const unsigned axis = -1;
    static const nnet::softmax_implementation implementation = nnet::softmax_implementation::stable;
    typedef ap_fixed<18,8,AP_RND,AP_SAT> exp_table_t;
    typedef ap_fixed<18,8,AP_RND,AP_SAT> inv_table_t;
};


#endif
