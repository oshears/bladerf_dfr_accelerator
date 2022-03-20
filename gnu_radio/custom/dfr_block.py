"""
Embedded Python Blocks:

Each time this file is saved, GRC will instantiate the first class it finds
to get ports and parameters of your block. The arguments to __init__  will
be the parameters. All of them are required to have default values!
"""

import numpy as np
from gnuradio import gr


class blk(gr.sync_block):  # other base classes are basic_block, decim_block, interp_block
    """DFR Block - Perform DFR Inference"""

    def __init__(self, Virtual_Nodes=50,Input_Gain=0.5,Feedback_Scale=0.4,Random_Seed=0,Mask_Min=-0.5,Mask_Max=0.5,Mask_Type="Uniform"):  # only default arguments here
        """arguments to this function show up as parameters in GRC"""
        gr.sync_block.__init__(
            self,
            name='DFR Block',   # will show up in GRC
            in_sig=[np.complex64],
            out_sig=[np.float32]
        )
        # if an attribute with the same name as a parameter is found,
        # a callback is registered (properties work, too).
        self.Virtual_Nodes = Virtual_Nodes
        self.seed = Random_Seed
        self.rng = np.random.default_rng(Random_Seed)
        self.N = Virtual_Nodes
        self.gamma = Input_Gain
        self.eta = Feedback_Scale
        self.LAST_NODE = self.N - 1
        self.reg = 1e-8
        self.reservoir = np.zeros(self.N)
        self.mask = self.rng.uniform(Mask_Min,Mask_Max,self.N)

        

    def work(self, input_items, output_items):
        """example: multiply with constant"""
        # output_items[0][:] = input_items[0] * self.multiply_const
        # print(input_items[0])

        ADC_MAX_SIGNED = 2**11


        i_data_norm = np.real(input_items[0])
        q_data_norm = np.imag(input_items[0])

        x = np.sqrt(np.power(i_data_norm,2) + np.power(q_data_norm,2))
        # y = ss_data[:,2]

        output_items[0][:] = x

        # mask generation
        # masked_samples = np.empty((num_samples,N))
        # for i in range(num_samples):
        #     masked_samples[i] = mask * x[i]

        # masked_sample = 

        # for j in range(N):

        #     g_i = mg(gamma * masked_samples[TRAIN_DATA_BEGIN + i][j] + eta * reservoir[LAST_NODE])
        #     reservoir[1:N] = reservoir[0:LAST_NODE]
        #     reservoir[0] = g_i



        # y_hat = reservoir_history.dot(W)


        return len(output_items[0])

    def mg(self,x):
        a = 2
        b = 0.8
        c = 0.2
        d = 2.1
        p = 10

        return (a * x) / (b + c * np.power( (d * x), p) )
