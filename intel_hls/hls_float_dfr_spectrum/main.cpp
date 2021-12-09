#include <stdio.h>

#include "HLS/hls.h"
#include "HLS/math.h"
#include "HLS/hls_float.h"
#include "HLS/hls_float_math.h"

#include "dfr.h"

using namespace ihc;

int main() {

  // define sample counts
  constexpr int NUM_INIT_SAMPLES = 100;
  constexpr int NUM_TEST_SAMPLES = 3000;
  constexpr int NUM_TOTAL_SAMPLES = NUM_INIT_SAMPLES + NUM_TEST_SAMPLES;

  // generate narma10 inputs and outputs
  printf("Creating input and output data vectors...\n");
  short** u = iq_inputs(NUM_TOTAL_SAMPLES);
  bool* y = spectrum_outputs(NUM_TOTAL_SAMPLES);


  // get test data vectors
  printf("Parsing test input and output vectors...\n");

  // store test data outputs
  bool y_hat_test[NUM_TEST_SAMPLES];

  // reservoir initialization
  printf("Initializing Reservoir...\n");
  for(unsigned int i = 0; i < NUM_INIT_SAMPLES; i++) ihc_hls_enqueue_noret(&dfr,u[i][0],u[i][1]);
  ihc_hls_component_run_all(dfr);

  // reservoir test
  printf("Testing DFR...\n");
  for(unsigned int i = 0; i < NUM_TEST_SAMPLES; i++) ihc_hls_enqueue(&y_hat_test[i], &dfr,u[i+NUM_INIT_SAMPLES][0],u[i+NUM_INIT_SAMPLES][1]);
  ihc_hls_component_run_all(dfr);

  // calculate accuracy
  float accuracy = 0;
  for(int i = 0; i < NUM_TEST_SAMPLES; i++){
    // bool prediction = (y_hat_test[i] >= 0.5);
    if(y_hat_test[i] == y[i+NUM_INIT_SAMPLES]) accuracy++;
  }
  accuracy = accuracy / NUM_TEST_SAMPLES;
  printf("Test Accuracy = %f\n",accuracy);

  return 0;

}
