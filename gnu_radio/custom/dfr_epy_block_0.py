"""
Embedded Python Blocks:

Each time this file is saved, GRC will instantiate the first class it finds
to get ports and parameters of your block. The arguments to __init__  will
be the parameters. All of them are required to have default values!
"""

import numpy as np
from gnuradio import gr


class blk(gr.sync_block):  # other base classes are basic_block, decim_block, interp_block
    """MIMO DFR Block - Perform DFR Inference"""

    def __init__(self, Virtual_Nodes=100,Input_Gain=0.8,Feedback_Scale=0.25,Random_Seed=0,Mask_Min=-0.5,Mask_Max=0.5,Mask_Type="Uniform"):  # only default arguments here
        """arguments to this function show up as parameters in GRC"""
        gr.sync_block.__init__(
            self,
            name='DFR Block',   # will show up in GRC
            in_sig=[np.complex64,np.complex64,np.complex64,np.complex64,np.complex64,np.complex64],
            out_sig=[np.float32]
        )
        # if an attribute with the same name as a parameter is found,
        # a callback is registered (properties work, too).
        print("Configuring DFR")
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

        self.W = np.array([-409.23841428671926,
        28.90550723004989,
        -50.01200978129947,
        -396.987540938812,
        63.66610974302454,
        -27.605933693203408,
        -65.39646420180898,
        -23.951626598158594,
        -17.191525589010972,
        -76.0513166496748,
        412.5452708589178,
        105.92942569830603,
        -82.99357848233058,
        -1625.188558134967,
        -1758.8951015128641,
        -223.5340808643209,
        -595.5839785432602,
        -0.3420416953671235,
        -1.165492937621054,
        363.196500092476,
        -13.196164547954439,
        49.4357746899592,
        60.6098173348846,
        4.319155478157711,
        321.5070549891921,
        0.5211083156330536,
        68.24079719278518,
        1.8558078562024776,
        -74.61548355726909,
        -564.9781034383734,
        -136.66858151582338,
        -41.05880445436742,
        -10.644251149696208,
        -581.2070660343395,
        504.1786433106811,
        -7.398120046042053,
        -409.05650958963776,
        -173.37659615751045,
        -586.6726253601468,
        -1042.5778360851873,
        -42.744602317782835,
        -6.798094852715071,
        419.14278783215536,
        0.23101984851450721,
        -423.86532287811553,
        632.984679113476,
        17.430909710589923,
        -275.7080589688696,
        -612.5322723660593,
        -471.5659728970778,
        -102.09152183130898,
        -67.04058572426766,
        638.9962707536055,
        436.643694786774,
        37.89188844458704,
        -47.62925461892486,
        -59.9013948853555,
        -1023.0912263435921,
        203.59604847452994,
        67.74498722623798,
        264.01104642782593,
        -76.3415292809131,
        16.861763465553793,
        -0.27819714170103405,
        -709.7325018817058,
        0.1486616149115886,
        1676.6210534302143,
        111.54286494112694,
        -900.0730420354726,
        147.69049634107586,
        846.1488263613714,
        -910.1046207325728,
        -31.130751491287683,
        -10.534204468547363,
        515.6267058507909,
        -295.85975089406355,
        -666.1863376239064,
        191.62324232872544,
        280.89914939009907,
        45.18335446495232,
        -528.5833462947272,
        -475.98820359676137,
        -22.908755653357748,
        -47.64858220313612,
        406.68663632908084,
        165.03158452472695,
        3.5501911939496744,
        192.6447636415588,
        12.933383495710077,
        -183.90435733355622,
        -70.9339923828466,
        10.112487174476986,
        227.42179336439455,
        -556.3193048584967,
        121.52688070748191,
        -16.607728869273636,
        1.031639521293169,
        -55.70345327981309,
        58.0016995464977,
        475.13918462556285])


    def work(self, input_items, output_items):
        """example: multiply with constant"""
        # output_items[0][:] = input_items[0] * self.multiply_const
        # print(input_items[0])

        # ADC_MAX_SIGNED = 2**11


        NUM_SAMPLES = len(input_items[0])

        combined_inputs = np.stack(input_items)
        # print(combined_inputs.shape)
        x = np.sum((abs(combined_inputs**2)), axis=0)

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
