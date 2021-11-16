//  Copyright (c) 2021 Intel Corporation                                  
//  SPDX-License-Identifier: MIT                                          
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

component DFR_FP dfr(DFR_FP i_data, DFR_FP q_data) {

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
  DFR_FP sample = ihc_sqrt(ihc_pow(i_data,DFR_FP(2)) + ihc_pow(q_data,DFR_FP(2)));
  
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

int main() {

  // define sample counts
  constexpr int NUM_INIT_SAMPLES = 200;
  constexpr int NUM_TEST_SAMPLES = 1000;
  constexpr int NUM_TOTAL_SAMPLES = NUM_INIT_SAMPLES + NUM_TEST_SAMPLES;

  // generate narma10 inputs and outputs
  printf("Creating input and output data vectors...\n");
  DFR_FP** u = iq_inputs(NUM_TOTAL_SAMPLES);
  DFR_FP* y = spectrum_outputs(NUM_TOTAL_SAMPLES);


  // get test data vectors
  printf("Parsing test input and output vectors...\n");
  // DFR_FP* u_test = get_vector_indexes(u,NUM_INIT_SAMPLES,NUM_TOTAL_SAMPLES);
  // DFR_FP* y_test = get_vector_indexes(y,NUM_INIT_SAMPLES,NUM_TOTAL_SAMPLES);

  // store test data outputs
  DFR_FP y_hat_test[NUM_TEST_SAMPLES];

  // reservoir initialization
  printf("Initializing Reservoir...\n");
  for(unsigned int i = 0; i < NUM_INIT_SAMPLES; i++) ihc_hls_enqueue_noret(&dfr,u[i][0],u[i][1]);
  ihc_hls_component_run_all(dfr);

  // reservoir test
  printf("Testing DFR...\n");
  for(unsigned int i = 0; i < NUM_TEST_SAMPLES; i++) ihc_hls_enqueue(&y_hat_test[i], &dfr,u[i+NUM_INIT_SAMPLES][0],u[i+NUM_INIT_SAMPLES][1]);
  ihc_hls_component_run_all(dfr);

  // calculate the NRMSE of the predicted output
  // DFR_FP nrmse = get_nrmse(y_hat_test,y_test,NUM_TEST_SAMPLES);
  // printf("Test NRMSE\t= %s\n",nrmse.get_str().c_str());

  // calculate the MSE of the predicted output
  // DFR_FP mse = get_mse(y_hat_test,y,NUM_TEST_SAMPLES);
  // printf("Test MSE\t= %s\n",mse.get_str().c_str());

  // calculate accuracy
  float accuracy = 0;
  for(int i = 0; i < NUM_TEST_SAMPLES; i++){
    bool prediction = (y_hat_test[i] >= 0.5);
    if(prediction == y[i+NUM_INIT_SAMPLES]) accuracy++;
  }
  accuracy = accuracy / NUM_TEST_SAMPLES;
  printf("Test Accuracy = %f\n",accuracy);

  return 0;

}
