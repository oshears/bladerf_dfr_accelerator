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

        self.W = np.array([-589.4317283630371,
                    -38.58226776123047,
                    946.5737419128418,
                    -979.8047285079956,
                    -283.7571544647217,
                    -559.7401161193848,
                    2737.4940071105957,
                    -314.8955874443054,
                    968.3470306396484,
                    7.468153893947601,
                    -1662.0237102508545,
                    229.55740356445312,
                    -264.89648628234863,
                    -0.3798371705415775,
                    -1349.5411758422852,
                    -1.4192554373876192,
                    323.34349060058594,
                    -286.4024085998535,
                    1281.8496704101562,
                    1125.2301445007324,
                    -818.563850402832,
                    577.280143737793,
                    185.4799575805664,
                    -33.83775329589844,
                    1772.1830215454102,
                    -1941.3939666748047,
                    140.7281723022461,
                    -2284.337860107422,
                    -144.74640655517578,
                    -231.86016082763672,
                    -11.057226657867432,
                    -2388.1128540039062,
                    26.346128640696406,
                    275.4407157897949,
                    438.04361724853516,
                    -944.2057266235352,
                    94.12022018432617,
                    170.9260711669922,
                    10.226631164550781,
                    64.93780899047852,
                    199.9371795654297,
                    -28.379258958622813,
                    -922.4196128845215,
                    2259.5208444595337,
                    -75.7298812866211,
                    272.80241775512695,
                    61.395785331726074,
                    481.0991744995117,
                    1018.62744140625,
                    2909.0243225097656])

        

    def work(self, input_items, output_items):
        """example: multiply with constant"""
        # output_items[0][:] = input_items[0] * self.multiply_const
        # print(input_items[0])

        # ADC_MAX_SIGNED = 2**11

        NUM_SAMPLES = len(input_items[0])


        i_data = np.real(input_items[0])
        q_data = np.imag(input_items[0])

        x = np.sqrt(np.power(i_data,2) + np.power(q_data,2))
        # y = ss_data[:,2]

        output_items[0][:] = x

        # mask generation
        masked_samples = np.empty((NUM_SAMPLES,self.N))
        for i in range(NUM_SAMPLES):
            masked_samples[i] = self.mask * x[i]

        reservoir_history = np.zeros((NUM_SAMPLES,self.N))
        for i in range(NUM_SAMPLES):
            for j in range(self.N):

                g_i = self.mg(self.gamma * masked_samples[i][j] + self.eta * self.reservoir[self.LAST_NODE])
                self.reservoir[1:self.N] = self.reservoir[0:self.LAST_NODE]
                self.reservoir[0] = g_i

            reservoir_history[i] = self.reservoir

        # y = reservoir_history.dot(self.W)
        y = reservoir_history.dot(self.W)
        y_bin = y.copy()
        y_bin[y_bin >= 0.5] = 1
        y_bin[y_bin < 0.5] = 0

        output_items[0][:] = y_bin

        return len(output_items[0])

    def mg(self,x):
        a = 2
        b = 0.8
        c = 0.2
        d = 2.1
        p = 10

        return (a * x) / (b + c * np.power( (d * x), p) )
