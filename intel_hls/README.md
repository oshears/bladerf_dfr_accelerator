# Library Issues with HLS FPGA Compile

## Issue with bits library/header file
https://gist.github.com/zuyu/7d5682a5c75282c596449758d21db5ed


## Issue with `libstdc++.so.6`
```
mv /home/oshears/software/intelFPGA/21.4/hls/linux64/lib/dspba/linux64/libstdc++.so.6 /home/oshears/software/intelFPGA/21.4/hls/linux64/lib/dspba/linux64/libstdc++.so.6.old
cp /usr/lib/x86_64-linux-gnu/libstdc++.so.6 /home/oshears/software/intelFPGA/21.4/hls/linux64/lib/dspba/linux64/libstdc++.so.6
```


https://www.intel.com/content/www/us/en/docs/programmable/683349/21-4/pro-edition-component-invocation-interface.html#cpy1548359143655__hls_avalon_streaming_component_argument

https://www.intel.com/content/www/us/en/docs/programmable/683456/21-4/debugging-during-verification.html

https://www.intel.com/content/www/us/en/docs/programmable/683349/21-4/interface-definition-example-component-73269.html#lks1588789273269