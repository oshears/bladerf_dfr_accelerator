Convert Binary Files into Human Readable Format
```
hexdump -C tx_data.bin > tx_data_hex.txt 
hexdump -C rx_data.bin > rx_data_hex.txt 
```

BladeRF Device Info
```
bladeRF-cli -e print -e probe -e info
```