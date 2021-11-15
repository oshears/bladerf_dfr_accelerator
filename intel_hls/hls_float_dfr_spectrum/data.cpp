#include <stdio.h>
#include <stdlib.h>

#include <iostream>
#include <fstream>
#include <sstream>
#include <string>

#include "HLS/hls.h"
#include "HLS/math.h"
#include "HLS/hls_float.h"
#include "HLS/hls_float_math.h"

#include "dfr.h"

// iq inputs
DFR_FP* iq_inputs(int size){

    DFR_FP* inputs = (DFR_FP*) malloc(sizeof(DFR_FP)*size);

    // File pointer
    std::fstream spectrum_file;
  
    // Open an existing file
    spectrum_file.open("./data/ss_data_0db.csv", std::iostream::in);

    std::string line, data_field;

    for (int i = 0; i < size; i++){
        // DFR_FP u = 0.5 * DFR_FP(static_cast<float>(rand()) / static_cast<float>(RAND_MAX));
        // inputs[i] = u;

        // read an entire row and
        // store it in a string variable 'line'
        std::getline(spectrum_file, line);
  
        // used for breaking words
        std::stringstream s(line);
  
        // read every column data of a row and
        // store it in a string variable, 'word'
        int j = 0;
        float i_data = 0, q_data = 0;
        while (std::getline(s, data_field, ',')) {
            if (j == 2){
                printf("i = %s\n",data_field.c_str());
            }
            else if(j == 3){
                printf("q = %s\n",data_field.c_str());
            }
  
            // add all the column data
            // of a row to a vector
            j++;
        }

        // printf("i = %f, q = %f");

        // printf("u[%d] = %f\n",i,u);
    }

    return inputs;
}

// spectrum outputs
DFR_FP* spectrum_outputs(DFR_FP* inputs, int size){

    DFR_FP* outputs = (DFR_FP*) malloc(sizeof(DFR_FP)*size);

    for (int i = 0; i < 10; i++){
        outputs[i] = 0;
    }

    // determine output from index 10 to size - 1
    for (int i = 9; i < size - 1; i++){

        // calculate sum of last 10 outputs
        DFR_FP sum = 0;
        for (int j = 0; j < 10; j++){
            sum = sum + outputs[i - j];
        }

        outputs[i + 1] = 0.3 * outputs[i] + 0.05 * outputs[i] * sum + 1.5 * inputs[i] * inputs[i - 9] + 0.1;

        // printf("outputs[%d] = %f\n",i+1,outputs[i + 1]);
    }

    return outputs;
}

DFR_FP* read_DFR_FP_vector_from_file(char const* fileName, int size){
    DFR_FP* outputs = (DFR_FP*)  malloc(sizeof(DFR_FP)*size);

    std::ifstream inFile;
    inFile.open(fileName);

    std::string line;
    int i = 0;
    if (inFile.is_open()){
        while ( getline (inFile,line) && i < size){
            outputs[i++] = std::stof(line);
            // printf("W[%d] = %d\n",i - 1,W[i - 1]);            
        }
        inFile.close();
    }


    return outputs;
}