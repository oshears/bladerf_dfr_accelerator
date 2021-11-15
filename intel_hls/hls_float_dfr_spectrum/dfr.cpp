//  Copyright (c) 2021 Intel Corporation                                  
//  SPDX-License-Identifier: MIT                                          
#include <stdio.h>

#include "HLS/hls.h"
#include "HLS/math.h"
#include "HLS/hls_float.h"
#include "HLS/hls_float_math.h"


#include "dfr.h"

using namespace ihc;

DFR_FP MASK[] = {
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


DFR_FP W[] = {
DFR_FP(-0.07984663594634611),
DFR_FP(0.06990546061523162),
DFR_FP(-2.4461795838038825),
DFR_FP(-0.2478298497219953),
DFR_FP(0.4229882524182287),
DFR_FP(0.5689905011753496),
DFR_FP(0.005442108644302834),
DFR_FP(-0.4245067349504268),
DFR_FP(1.6254775694542403),
DFR_FP(6.524140362256503),
DFR_FP(0.024194246083233395),
DFR_FP(0.008890220341662314),
DFR_FP(-1.2741159273366733),
DFR_FP(0.05480084970293575),
DFR_FP(-0.09718434548446453),
DFR_FP(305.2343364338085),
DFR_FP(-0.15242820243361166),
DFR_FP(-76.75023332569612),
DFR_FP(-0.2720570730177223),
DFR_FP(-0.32368819614083577),
DFR_FP(-269.4342332123924),
DFR_FP(4.553757555403706),
DFR_FP(-0.31829378990975954),
DFR_FP(-5.401371679204203),
DFR_FP(481.14513970903863),
DFR_FP(0.7085678521531492),
DFR_FP(-0.9495515330730768),
DFR_FP(-321.10666684194166),
DFR_FP(-5.105070621197569),
DFR_FP(6.019762280571285),
DFR_FP(-0.08898028425613091),
DFR_FP(1.991190781225896),
DFR_FP(7.261172521365097),
DFR_FP(0.26039471092097255),
DFR_FP(-0.9899848099739819),
DFR_FP(-0.16115952611200157),
DFR_FP(637.2063523132383),
DFR_FP(0.2293919141352596),
DFR_FP(-0.18478705863647882),
DFR_FP(-31.130013648971726),
DFR_FP(4.886190907609034),
DFR_FP(0.2401681560315012),
DFR_FP(0.04829236503039169),
DFR_FP(393.8701502773274),
DFR_FP(0.06271073313354236),
DFR_FP(-0.7629181651948329),
DFR_FP(6.31111314998725),
DFR_FP(-0.22655251815967858),
DFR_FP(-0.4998416520380733),
DFR_FP(0.2283084510709159)
};

DFR_FP mackey_glass(DFR_FP x){

    DFR_FP C = 2;
    DFR_FP b = 2.1;
    DFR_FP p = 10;
    DFR_FP a = 0.8;
    DFR_FP c = 0.2;

    return (C * x) / (a + c * ihc_pow(b * x,p));
}

component bool dfr(DFR_FP i_data, DFR_FP q_data) {

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
