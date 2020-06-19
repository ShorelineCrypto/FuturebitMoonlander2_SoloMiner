# Best Practice for Futurebit Moonlander2 USB ASIC on solo mining mode 

Linux scripts provided for best practice of USB ASIC on mining NewEnglandcoin (NENG). 

* Two wallets running scripts.
* mining scripts for rotating on two full nodes, or 1 full node + 1 pool
* Two configuration files for "newenglandcoin.conf" in two different folders for the two full nodes.

## Problems for USB ASIC solo mining on  NewEnglandcoin (NENG)

Solo mining is recommended for USB ASIC such as Futurebit Moonlander2 during base difficulty reset day. 
One such USB ASIC can mine up to 5 millions NENG in one day. 

However, Moonlander2 have operational challenges during base difficulty reset day such as frequent 
"All Pool Dead" error.  

## Root Cause for ALL POOL DEAD error

Scrypt randomSpike will cause 50% of found block as "rejected" for the USB ASIC on solo mining mode. 
bfgminer software recommended from vendor that assumes regular scrypt coins, not like NENG. 
High rejection will confuse bfgminer and cause the "ALL POOL DEAD" error triggered.


## Workaround: rotate solo mining on two full nodes 


bfgminer allows a "rotate" mode that automatically rotate between two pools.  Here we recommend 
a setup of two full node running in different ports on NENG and the bfgminer rotate every 1 minute betweeen 
two full nodes on solo mining mode. 

So far the "ALL POOL DEAD" is resolved and yield is signifcantly higher than other methods. 


## Alternative: rotate1 on solo mining one full node + 1 mining pool

Alternatively, one can set up 1 mining pool + 1 solo mining full node for the ASIC to rotate every 1 minute. 
 The 1 mining pool result is not as good as the 2 solo mode setup, but still rotate on mixed style can solve the "ALL POOL DEAD" problem. 

