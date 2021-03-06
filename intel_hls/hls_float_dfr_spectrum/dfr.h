#include <stdio.h>
#include <stdlib.h>

#include "HLS/hls.h"
#include "HLS/math.h"
#include "HLS/hls_float.h"
#include "HLS/hls_float_math.h"

using namespace ihc;

// using DFR_FP = FPhalf;
using DFR_FP = hls_float<8, 17, fp_config::FP_Round::RNE>;

// global weight and mask data
// extern DFR_FP MASK[];
// extern DFR_FP W[];

// configure global mask and weight data
// void config_mask_weight();

//mackey glass function
DFR_FP mackey_glass(DFR_FP x);

// iq inputs: 2D array of size (2 x size)
short** iq_inputs(int size);

// spectrum outputs
bool* spectrum_outputs(int size);

// Frobenius norm
DFR_FP norm(DFR_FP x);
DFR_FP norm(DFR_FP* x, int size);

// calculate kian's nrmse
DFR_FP get_nrmse(DFR_FP* y_hat, DFR_FP* y, int size);

// calculate mean squared error
DFR_FP get_mse(DFR_FP* y_hat, DFR_FP* y, int size);

// get sub-vector from specified indexes
DFR_FP* get_vector_indexes(DFR_FP* vector, int idx_0, int idx_1);

// read data from file
DFR_FP* read_DFR_FP_vector_from_file(char const* fileName, int size);


// hls dfr component for spectrum sensing
component bool dfr(short i_data, short q_data);

// main function
int main();

