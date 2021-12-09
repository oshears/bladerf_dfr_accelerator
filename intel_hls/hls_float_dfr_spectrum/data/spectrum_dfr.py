#!/usr/bin/python3

import numpy as np
import matplotlib.pyplot as plt

import sys

def mg(x):
    a = 2
    b = 0.8
    c = 0.2
    d = 2.1
    p = 10

    return (a * x) / (b + c * np.power( (d * x), p) )

init_samples = 100
train_samples = 3000
test_samples = 2 * init_samples - train_samples

num_samples = train_samples + init_samples


rng = np.random.default_rng(0)

SNR = "-10db"

ss_data = np.genfromtxt(f'ss_data_{SNR}.csv', delimiter=',')

ADC_MAX_SIGNED = 2**11

# normalize, convert to 16 bit representation
print(f"Max I: {np.max(ss_data[:,2])}; Max Q: {np.max(ss_data[:,3])}")
i_data = ((ss_data[:,2] / np.max(ss_data[:,2])) * (ADC_MAX_SIGNED)).astype(np.short)
q_data = ((ss_data[:,3] / np.max(ss_data[:,3])) * (ADC_MAX_SIGNED)).astype(np.short)

i_data_norm = i_data / ADC_MAX_SIGNED
q_data_norm = q_data / ADC_MAX_SIGNED
x = np.sqrt(np.power(i_data_norm,2) + np.power(q_data_norm,2))
y = ss_data[:,5]

y_train = y[init_samples:init_samples+train_samples]

N = 50
gamma = 0.5
eta = 0.4
LAST_NODE = N - 1

if len(sys.argv) > 3:
    gamma = float(sys.argv[1])
    eta = float(sys.argv[2])
    N = int(sys.argv[3])
    LAST_NODE = N - 1

    print(f"N = {N}; gamma = {gamma}; eta = {eta}")


alpha = 0.01  # learning rate

# weight generation
W = (2*rng.random(N) - 1)

mask = rng.uniform(-0.5,0.5,N)

# mask generation
masked_samples = np.empty((num_samples,N))
for i in range(num_samples):
    masked_samples[i] = mask * x[i]

reservoir = np.zeros(N)
reservoir_history = np.zeros((train_samples,N))

# initialization
for i in range(init_samples):
    for j in range(N):
        g_i = mg(gamma * masked_samples[i][j] + eta * reservoir[LAST_NODE])
        reservoir[1:N] = reservoir[0:LAST_NODE]
        reservoir[0] = g_i

# dfr stage
output_error = 0
reservoir_old = 0

# training data configuration
for i in range(train_samples):

    dfr_output = 0

    for j in range(N):

        W[j] = (W[j] - alpha * output_error * reservoir[LAST_NODE]) if (i > 0) else W[j]

        g_i = mg(gamma * masked_samples[i + init_samples][j] + eta * reservoir[LAST_NODE])
        reservoir[1:N] = reservoir[0:LAST_NODE]
        reservoir[0] = g_i

        dfr_output += W[j] * g_i

    output_error = dfr_output - y_train[i]


# initialization
reservoir = np.zeros(N)
for i in range(init_samples):
    for j in range(N):
        g_i = mg(gamma * masked_samples[i][j] + eta * reservoir[LAST_NODE])
        reservoir[1:N] = reservoir[0:LAST_NODE]
        reservoir[0] = g_i

# training data evaluation
y_hat = np.zeros(train_samples)
for i in range(train_samples):
    for j in range(N):

        g_i = mg(gamma * masked_samples[i + init_samples][j] + eta * reservoir[LAST_NODE])
        reservoir[1:N] = reservoir[0:LAST_NODE]
        reservoir[0] = g_i

        y_hat[i] += W[j] * g_i
        
    reservoir_history[i] = reservoir

# loss = (np.linalg.norm(y_train - y_hat) / np.linalg.norm(y_train))
# print(f"SGD NRMSE:\t{loss}")
y_hat_bin = y_hat.copy()
y_hat_bin[y_hat_bin >= 0.5] = 1
y_hat_bin[y_hat_bin < 0.5] = 0
accuracy = (y_hat_bin == y_train).mean()
print(f"SGD Accuracy:\t{accuracy}")

# regression approach
reg = 1e-8
W = np.dot(np.dot(y_train,reservoir_history),np.linalg.inv((np.dot(reservoir_history.T,reservoir_history)) + reg * np.eye(N)))
y_hat_reg = reservoir_history.dot(W)

y_hat_reg_bin = y_hat_reg.copy()
y_hat_reg_bin[y_hat_reg_bin >= 0.5] = 1
y_hat_reg_bin[y_hat_reg_bin < 0.5] = 0
accuracy = (y_hat_reg_bin == y_train).mean()
print(f"Ridge Regression Accuracy:\t{accuracy}")


# write dfr config data

# input data
fh = open(f"./dfr_config/spectrum_data_{SNR}.csv","w")
for i in range(num_samples):
    fh.write(str(i_data[i]) + "," + str(q_data[i]) + "," + str(y[i].astype(int)) + "\n")
fh.close()

# write input data hex file (all data)
fh = open(f"./dfr_config/iq_data_rom_{SNR}.hex","w")
addr = 0x0000
for i in range(i_data.size):
    fh.write(':04{:04x}00{:04x}{:04x}FF\n'.format(addr,i_data[i] & 0xffff,q_data[i] & 0xffff))
    addr += 1
fh.write(':00000001FF')
fh.close()
# NOTE: need to resave file after writing to update checksum values

# output data
fh = open("./dfr_config/float_output_data.txt","w")
for i in range(num_samples):
    fh.write(str(y[i].astype(int)) + "\n")
fh.close()

# mask
fh = open("./dfr_config/float_mask_data.txt","w")
for i in range(N):
    fh.write(str(mask[i]) + "\n")
fh.close()

# weights
fh = open("./dfr_config/float_weight_data.txt","w")
for i in range(N):
    fh.write(str(W[i]) + "\n")
fh.close()


# a = -5
# bin(a & 0xffffffff)
# '0b10000000000000000110001000000000'

# format(a & 0xffffffff, '32b')
# '10000000000000000110001000000000'
# '{:32b}'.format(a & 0xffffffff)
# '10000000000000000110001000000000'

#################### testing

'''
# initialization
reservoir = np.zeros(N)
for i in range(init_samples):
    for j in range(N):
        g_i = mg(gamma * masked_samples[i][j] + eta * reservoir[LAST_NODE])
        reservoir[1:N] = reservoir[0:LAST_NODE]
        reservoir[0] = g_i

# training data evaluation
y_hat = np.zeros(test_samples)
for i in range(train_samples):
    for j in range(N):

        g_i = mg(gamma * masked_samples[i + init_samples][j] + eta * reservoir[LAST_NODE])
        reservoir[1:N] = reservoir[0:LAST_NODE]
        reservoir[0] = g_i

        y_hat[i] += W[j] * g_i
        
    reservoir_history[i] = reservoir

y_hat_reg = reservoir_history.dot(W)

y_hat_reg_bin = y_hat_reg.copy()
y_hat_reg_bin[y_hat_reg_bin >= 0.5] = 1
y_hat_reg_bin[y_hat_reg_bin < 0.5] = 0
accuracy = (y_hat_reg_bin == y_train).mean()
print(f"Ridge Regression Accuracy (Test):\t{accuracy}")

'''