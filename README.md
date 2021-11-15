# bladeRF FPGA Development Notes



## bladeRF FPGA Development

https://github.com/Nuand/bladeRF/wiki/FPGA-Development

### Overview
- Hosted Image
    - Shuffles I/Q samples between the FX3 (via GPIF II interface) and RFIC
    - Configures the RFIC via SPI based on commands from FX3 via UART
    - Control Si5338 clock generator chip and VCTCXO DAC
    - Default bladeRF image: bladerf-hosted.vhd
- Nios II
    - FPGA soft microprocessor embedded in bladeRF FPGA
    - Handles command/control
    - Receives packetized requests from host software via FX3 chip via UART
        - E.g.: set frequency/gain, IQ imbalance correction, sample rate, etc.
    - Communicates with FPGA logic via input/output ports of `nios_system` component 
- Custom Code
    - Should be placed between sample/meta FIFO blocks and iq correction blocks

### Architecture Block Diagrams
![](bladerf_micro_block_diagram.drawio.png)
![](https://raw.githubusercontent.com/ifrasch/files/master/bladeRF-FPGA-samples-architecture.png)


## Components

### rx_packet_generator
RX Packet Generator

### system_pll
80 MHz System Clock (38.4 MHz Reference Clock)

### fx3_pll
FX3 PLL (PCLK)

### pll_reset
PLL Reset

### ps_sync
Power Supply Synchronization

### fx3_gpif
FX3 GPIF

### nios_system
NIOS System

### tx
TX Submodule

### rx
RX Submodule

### reset_synchronizer
Reset Synchronizer

### synchronizer
Synchronizer

### handshake
Handshakes
