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

num_samples = train_samples + init_samples


rng = np.random.default_rng(0)

ss_data = np.genfromtxt('ss_data_-10db.csv', delimiter=',')

x = ss_data[:,4]
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

loss = (np.linalg.norm(y_train - y_hat) / np.linalg.norm(y_train))
print(f"SGD NRMSE:\t{loss}")

# regression approach
reg = 1e-8
W = np.dot(np.dot(y_train,reservoir_history),np.linalg.inv((np.dot(reservoir_history.T,reservoir_history)) + reg * np.eye(N)))
y_hat_reg = reservoir_history.dot(W)
loss = (np.linalg.norm(y_train - y_hat_reg) / np.linalg.norm(y_train))
print(f"Ridge Regression NRMSE:\t{loss}")

y_hat_reg_bin = y_hat_reg.copy()
y_hat_reg_bin[y_hat_reg_bin >= 0.5] = 1
y_hat_reg_bin[y_hat_reg_bin < 0.5] = 0
accuracy = (y_hat_reg_bin == y_train).mean()
print(f"Ridge Regression Accuracy:\t{accuracy}")


# write dfr config data

# input data
fh = open("./dfr_config/float_input_data.txt","w")
for i in range(num_samples):
    fh.write(str(x[i]) + "\n")
fh.close()

# output data
fh = open("./dfr_config/float_output_data.txt","w")
for i in range(num_samples):
    fh.write(str(y[i]) + "\n")
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
