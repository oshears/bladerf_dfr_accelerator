# Signals of Interest

```
rx_sample_fifo.rreq
```

```
rx_enable
```

```
meta_en_rx
```


```
packet_en_rx
```

High when the host has made a data request to the bladeRF

```
rx_packet_ready
```

```
rx_mux_sel
```
### RX_MUX_NORMAL
- sets all mux streams to adc data streams
### RX_MUX_12BIT_COUNTER | RX_MUX_32BIT_COUNTER
- sets all mux streams to output of signal generator
### RX_MUX_ENTROPY
- not implemented
### RX_MUX_DIGITAL_LOOPBACK
- loops back transmit stream to rx stream