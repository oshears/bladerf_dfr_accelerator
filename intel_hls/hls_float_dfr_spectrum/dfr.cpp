#include <stdio.h>

#include "HLS/hls.h"
#include "HLS/math.h"
#include "HLS/hls_float.h"
#include "HLS/hls_float_math.h"

#include "dfr.h"

using namespace ihc;

DFR_FP mackey_glass(DFR_FP x){

    DFR_FP C = 2;
    DFR_FP b = 2.1;
    DFR_FP p = 10;
    DFR_FP a = 0.8;
    DFR_FP c = 0.2;

    return (C * x) / (a + c * ihc_pow(b * x,p));
}

component DFR_FP dfr(int i_data, int q_data) {

  // dfr parameters
  constexpr int N = 50;
  constexpr int LAST_NODE = N - 1;
  DFR_FP gamma = 0.5;
  DFR_FP eta = 0.4;

  static DFR_FP reservoir[N] = {};

  // process sample through reservoir

  // track output
  DFR_FP dfr_out = 0;

  // calculate energy
  // DFR_FP sample = ihc_sqrt(ihc_pow(i_data,DFR_FP(2)) + ihc_pow(q_data,DFR_FP(2)));
  DFR_FP sample = ihc_sqrt(DFR_FP(i_data * i_data + q_data * q_data));
  
  // loop through each masked input subsample
  for(int node_idx = 0; node_idx < N; node_idx++){

    // calculate next node value based on current subsample
    DFR_FP masked_sample_i = MASK[node_idx] * sample;
    DFR_FP mg_in = gamma * masked_sample_i + eta * reservoir[LAST_NODE];
    DFR_FP mg_out = mackey_glass(mg_in);

    // update reservoir  
    for(int i = LAST_NODE; i > 0; i--) reservoir[i] = reservoir[i - 1];
    reservoir[0] = mg_out;

    // calculate output
    dfr_out += W[LAST_NODE - node_idx] * mg_out;
  }

  return dfr_out;
}