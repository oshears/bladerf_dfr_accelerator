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
int** iq_inputs(int size){

    int** inputs = (int**) malloc(sizeof(int*) * size);


    // File pointer
    std::fstream spectrum_file;
  
    // Open an existing file
    spectrum_file.open("./data/spectrum_data_-10db.csv", std::iostream::in);

    std::string line, data_field;

    for (int i = 0; i < size; i++){
        inputs[i] = (int*) malloc(sizeof(int*) * 2);

        // read an entire row and
        // store it in a string variable 'line'
        std::getline(spectrum_file, line);
  
        // used for breaking words
        std::stringstream s(line);
  
        // read every column data of a row and
        // store it in a string variable, 'word'
        int j = 0;
        while (std::getline(s, data_field, ',')) {
            if (j == 0){
                inputs[i][0] = std::stof(data_field);
            }
            else if(j == 1){
                inputs[i][1] = std::stof(data_field);
            }
            j++;
        }

        // printf("i = %s, q = %s\n",inputs[i][0].get_str().c_str(),inputs[i][1].get_str().c_str());

    }

    return inputs;
}

// spectrum outputs
bool* spectrum_outputs(int size){

    bool* outputs = (bool*) malloc(sizeof(bool)*size);

    // File pointer
    std::fstream spectrum_file;
  
    // Open an existing file
    spectrum_file.open("./data/spectrum_data_-10db.csv", std::iostream::in);

    std::string line, data_field;

    for (int i = 0; i < size; i++){

        // read an entire row and
        // store it in a string variable 'line'
        std::getline(spectrum_file, line);
  
        // used for breaking words
        std::stringstream s(line);
  
        // read every column data of a row and
        // store it in a string variable, 'word'
        int j = 0;
        while (std::getline(s, data_field, ',')) {
            if (j == 2){
                outputs[i] = std::stoi(data_field);
            }
            j++;
        }

        // printf("spectrum_out = %s\n",outputs[i].get_str().c_str());
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