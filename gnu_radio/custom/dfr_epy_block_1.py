"""
Embedded Python Blocks:

Each time this file is saved, GRC will instantiate the first class it finds
to get ports and parameters of your block. The arguments to __init__  will
be the parameters. All of them are required to have default values!
"""

import numpy as np
from gnuradio import gr


class blk(gr.sync_block):  # other base classes are basic_block, decim_block, interp_block
    """Binary Accuracy Block - Keep a running total of the accuracy"""

    def __init__(self, num_samples=1.0):  # only default arguments here
        """arguments to this function show up as parameters in GRC"""
        gr.sync_block.__init__(
            self,
            name='Binary Accuracy Block',   # will show up in GRC
            in_sig=[np.float32,np.float32],
            out_sig=[np.float32]
        )
        # if an attribute with the same name as a parameter is found,
        # a callback is registered (properties work, too).
        self.num_samples = num_samples
        self.processedSamples = 0
        self.accuracy = 0

    def work(self, input_items, output_items):
        """example: multiply with constant"""
        # output_items[0][:] = input_items[0] * self.example_param

        previousSum = self.accuracy * self.processedSamples
        currentSum = (input_items[0] == input_items[1]).sum()
        currentNumSamples = len(input_items[0])
        train_accuracy =  (currentSum + previousSum) / (currentNumSamples + self.processedSamples)
        # auc = roc_auc_score(y_train, y_hat)
        output_items[0][:] = train_accuracy

        self.processedSamples += len(output_items[0])

        return len(output_items[0])
