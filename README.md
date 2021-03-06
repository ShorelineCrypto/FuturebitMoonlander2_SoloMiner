# Best Practice for Futurebit Moonlander2 USB ASIC on solo mining mode 

Linux scripts provided for best practice of USB ASIC on mining Nengcoin (NENG). 

* Two wallets running scripts.
* mining scripts for rotating on two full nodes, or 1 full node + 1 pool
* Two configuration files for "nengcoin.conf" in two different folders for the two full nodes.

## Problems for USB ASIC solo mining on  Nengcoin (NENG)

Solo mining is recommended for USB ASIC such as Futurebit Moonlander2 during base difficulty reset day. 
USB ASIC like Moonlander2 can mine between 2 to 3 millions NENG in one day on solo mining mode. 

However, Moonlander2 have operational challenges during base difficulty reset day such as frequent 
"All Pool Dead" error.  

## Root Cause for ALL POOL DEAD error

Scrypt randomSpike will cause 50% of found blocks as "rejected" for the USB ASIC on solo mining mode. 
bfgminer is software recommended from vendor for Futurebit Moondlaner 2.  bfgminer software assumes regular scrypt coins, not like NENG on scrypt randomSpike alogrithm.  High rejection will confuse bfgminer and cause the "ALL POOL DEAD" error triggered. 
 
Once the USB ASIC on bifgminer is on "ALL POOL DEAD" mode, all the mining stops unless user reset the USB ASIC by killing the bfgminer and restart bfgminer manually. 


## Workaround: rotate solo mining on two full nodes 


bfgminer allows a "rotate" mode that automatically rotate between two pools.  Here we recommend 
a setup of two full node running in different ports on NENG and the bfgminer rotate every 1 minute betweeen 
two full nodes on solo mining mode. 

So far the "ALL POOL DEAD" is resolved and yield is signifcantly higher than other methods. 


## Alternative: rotate on 1 solo mining one full node + 1 mining pool

Alternatively, one can set up 1 mining pool + 1 solo mining full node for the ASIC to rotate every 1 minute. 
 The 1 mining pool result is not as good as the 2 solo mode setup, but still rotate on mixed style can solve the "ALL POOL DEAD" problem. 

## Experimental feature to boost reward on reset
"--expiry 10" can boost more rewards on reset. However, several "ALL POOL DEAD" errors should be expected on reset.  This is not recommended default feature because it does require human intervention and watching the operation on two rotating nodes solo mining. When "ALL POOL DEAD" error hit, the bfgminer needs to be killed and restarted manually.   
