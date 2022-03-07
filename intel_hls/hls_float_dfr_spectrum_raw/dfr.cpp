#include <stdio.h>

#include "HLS/hls.h"
#include "HLS/math.h"
#include "HLS/hls_float.h"
#include "HLS/hls_float_math.h"

#include "dfr.h"

using namespace ihc;

extern "C" {

const DFR_FP MASK[] = {
DFR_FP(0.28709830748868337),
DFR_FP(-0.26063055700704785),
DFR_FP(0.3764842308107038),
DFR_FP(-0.44143196519480565),
DFR_FP(-0.16388293945433963),
DFR_FP(-0.34972053310516094),
DFR_FP(-0.049660633350713024),
DFR_FP(0.29632427028729424),
DFR_FP(-0.26935779100625257),
DFR_FP(-0.4479786989355904),
DFR_FP(-0.0954481601784718),
DFR_FP(-0.30148695549074467),
DFR_FP(-0.4092469543808781),
DFR_FP(0.08033238598685066),
DFR_FP(-0.2013038671810774),
DFR_FP(0.17199487795635937),
DFR_FP(-0.3004845560317867),
DFR_FP(0.4421131105064978),
DFR_FP(-0.13488983175517144),
DFR_FP(-0.3945047204297705),
DFR_FP(0.12910815153970923),
DFR_FP(0.4271545530678674),
DFR_FP(-0.05962284528421602),
DFR_FP(0.45459049369073723),
DFR_FP(-0.00010418631235298292),
DFR_FP(-0.07477137515092447),
DFR_FP(0.12021345201537781),
DFR_FP(0.4950965052353241),
DFR_FP(0.4489436749377653),
DFR_FP(-0.039954860690903926),
DFR_FP(0.25772884530829143),
DFR_FP(-0.002577304512381029),
DFR_FP(0.02931216019677041),
DFR_FP(0.2857857007138075),
DFR_FP(-0.08534415064432921),
DFR_FP(0.23448357178872936),
DFR_FP(0.21114287798974984),
DFR_FP(0.43205968661337824),
DFR_FP(-0.3850673667190948),
DFR_FP(0.2290151170763094),
DFR_FP(0.4274239286245599),
DFR_FP(0.4679261899246464),
DFR_FP(-0.4852936950346307),
DFR_FP(0.36364009024557575),
DFR_FP(0.4811950400663443),
DFR_FP(0.45721017961096355),
DFR_FP(-0.3512359877675021),
DFR_FP(0.47262881382295496),
DFR_FP(0.38993555572052063),
DFR_FP(0.3223738275430704)
};

const DFR_FP W[] = {
DFR_FP(683.6791114807129),
DFR_FP(81.97559309005737),
DFR_FP(-145.38898998498917),
DFR_FP(52.123558044433594),
DFR_FP(63.074395298957825),
DFR_FP(21.568895280361176),
DFR_FP(-298.720263004303),
DFR_FP(-251.77930653095245),
DFR_FP(-105.80789887905121),
DFR_FP(-48.69622325897217),
DFR_FP(-753.01207447052),
DFR_FP(-73.4172294139862),
DFR_FP(-85.68536412715912),
DFR_FP(582.7960662841797),
DFR_FP(-870.3895282745361),
DFR_FP(633.9294407367706),
DFR_FP(42.69004821777344),
DFR_FP(-488.6543065905571),
DFR_FP(-0.7440321056810717),
DFR_FP(193.1480712890625),
DFR_FP(-2043.355988740921),
DFR_FP(54.49734270572662),
DFR_FP(-121.15349876880646),
DFR_FP(248.81564903259277),
DFR_FP(-1757.644809603691),
DFR_FP(5.000668627799314),
DFR_FP(78.54504060745239),
DFR_FP(-644.0030982494354),
DFR_FP(-45.399492621421814),
DFR_FP(756.4350981712341),
DFR_FP(-72.30270195007324),
DFR_FP(-676.7820348739624),
DFR_FP(-35.21641993522644),
DFR_FP(326.6758804321289),
DFR_FP(-587.4326219558716),
DFR_FP(-1140.985803604126),
DFR_FP(519.0882076025009),
DFR_FP(-75.79710793495178),
DFR_FP(315.4117660522461),
DFR_FP(1939.8626980781555),
DFR_FP(-43.724177956581116),
DFR_FP(-545.2930755615234),
DFR_FP(-315.871768951416),
DFR_FP(2794.084162592888),
DFR_FP(-23.87190532684326),
DFR_FP(947.5084571838379),
DFR_FP(42.979408740997314),
DFR_FP(-42.264872789382935),
DFR_FP(-337.18653297424316),
DFR_FP(-17.758880615234375)
};

// dfr parameters
const DFR_FP dfr_gamma = 0.5;
const DFR_FP dfr_eta = 0.4;
const unsigned N = 50;
const unsigned LAST_NODE = N - 1;
const unsigned MAX_ADC_SIGNED = 0x7FF;

// mackey glass parameters
const DFR_FP mg_C = 2;
const DFR_FP mg_b = 2.1;
const DFR_FP mg_p = 10;
const DFR_FP mg_a = 0.8;
const DFR_FP mg_c = 0.2; 
}

component hls_stall_free_return DFR_FP dfr(hls_stable_argument short i_data, hls_stable_argument short q_data) {

  // persistent reservoir
  static DFR_FP reservoir[N] hls_init_on_reset;


  // new reservoir to replace with old
  // DFR_FP new_reservoir[N];


  // process sample through reservoir

  // track output
  DFR_FP dfr_out = 0;

  // calculate energy
  // DFR_FP sample = ihc_sqrt(ihc_pow(i_data,DFR_FP(2)) + ihc_pow(q_data,DFR_FP(2)));
  DFR_FP i_data_scaled = DFR_FP(i_data) / DFR_FP(MAX_ADC_SIGNED);
  DFR_FP q_data_scaled = DFR_FP(q_data) / DFR_FP(MAX_ADC_SIGNED);
  DFR_FP sample = ihc_sqrt(i_data_scaled * i_data_scaled + q_data_scaled * q_data_scaled);
  
  // loop through each masked input subsample
  #pragma unroll 5
  for(unsigned node_idx = 0; node_idx < N; node_idx++){

    // calculate next node value based on current subsample
    DFR_FP masked_sample_i = MASK[node_idx] * sample;
    // DFR_FP mg_in = gamma * masked_sample_i + eta * reservoir[LAST_NODE];
    DFR_FP mg_in = dfr_gamma * masked_sample_i + dfr_eta * reservoir[LAST_NODE - node_idx];
    // DFR_FP mg_out = mackey_glass(mg_in);

    // Mackey Glass Equation
    // (C * x) / (a + c * ihc_pow(b * x,p));
    DFR_FP mg_power = ihc_pow(mg_b * mg_in,mg_p);
    DFR_FP mg_denominator = mg_a + mg_c * mg_power;
    DFR_FP mg_numerator = mg_C * mg_in;
    DFR_FP mg_out = mg_numerator / mg_denominator;

    // update reservoir  
    // for(unsigned i = LAST_NODE; i > 0; i--) reservoir[i] = reservoir[i - 1];
    reservoir[LAST_NODE - node_idx] = mg_out;

    // update first node value
    // reservoir[0] = mg_out;

    // calculate output
    dfr_out += W[LAST_NODE - node_idx] * mg_out;
  }

  // #pragma unroll
  // for(unsigned node_idx = 0; node_idx < N; node_idx++){
  //   reservoir[node_idx] = new_reservoir[node_idx];
  // }

  // bool dfr_out_bool = (dfr_out >= 0.5);

  return dfr_out;

}