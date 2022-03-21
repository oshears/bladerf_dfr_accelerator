"""
Embedded Python Blocks:

Each time this file is saved, GRC will instantiate the first class it finds
to get ports and parameters of your block. The arguments to __init__  will
be the parameters. All of them are required to have default values!
"""

import numpy as np
from gnuradio import gr


class blk(gr.sync_block):  # other base classes are basic_block, decim_block, interp_block
    """Threshold Prediction"""

    def __init__(self, threshold=1.0):  # only default arguments here
        """arguments to this function show up as parameters in GRC"""
        gr.sync_block.__init__(
            self,
            name='Threshold Prediction Block',   # will show up in GRC
            in_sig=[np.complex64],
            out_sig=[np.float32]
        )
        # if an attribute with the same name as a parameter is found,
        # a callback is registered (properties work, too).
        self.threshold = threshold

    def work(self, input_items, output_items):
        """example: multiply with constant"""

        i_data = np.real(input_items[0])
        q_data = np.imag(input_items[0])

        x = np.sqrt(np.power(i_data,2) + np.power(q_data,2))

        y = x.copy()
        y[y >= self.threshold] = 1
        y[y < self.threshold] = 0


        output_items[0][:] = y
        # output_items[0][:] = 1
        # print(output_items[0])

        return len(output_items[0])
