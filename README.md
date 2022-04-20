# Depreciated after NENG v2.x Release

Currently on v2.2.0 wallet with 3 soft forks, this repos method no longers works because new version v2.x wallet no longer can mine into 
wallet full node directly on bfgminer software. Further more, old version wallet is only compatible for full node syncing, but not for mining due to 3 soft forks BIPS. 

Current recommendation on Fureturebit Moonlander2 USB ASIC:  either use pool solo mode mining or set up your own private pool for ASIC.

## Best Practice for Futurebit Moonlander2 USB ASIC on solo mining mode 

Windows10/Linux scripts provided for best practice of USB ASIC on mining Nengcoin (NENG). 

* Two wallets running scripts.
* mining scripts for rotating on two full nodes, or 1 full node + 1 pool
* Two configuration files for "nengcoin.conf" in two different folders for the two full nodes.


## Solo Mining on Two Rotating Nodes works on Windows10

Sefia provided windows10 bat script under "window10" folder here. Solo mining setup for USB ASIC on two rotating nodes was found to be good for windows10 too for the
same theory below.  

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


## Extra Benefit of solo mining for USB ASIC on two Rotating Nodes

Another benefit is that two rotating nodes will give miner more rewards, more than one single node setup.  The reason for "more reward" on two rotating nodes is that USB ASIC can mine into cheetah diff occasionally and two rotating nodes setup can help USB ASIC to mine into Cheetah diff blocks where traditionally only CPU miners on computers or android phones can mine those blocks.

## Alternative: rotate on 1 solo mining one full node + 1 mining pool

Alternatively, one can set up 1 mining pool + 1 solo mining full node for the ASIC to rotate every 1 minute. 
 The 1 mining pool result is not as good as the 2 solo mode setup, but still rotate on mixed style can solve the "ALL POOL DEAD" problem. 

## Experimental feature to boost reward on reset
"--expiry 10" can boost more rewards on reset. However, several "ALL POOL DEAD" errors should be expected on reset.  This is not recommended default feature because it does require human intervention and watching the operation on two rotating nodes solo mining. When "ALL POOL DEAD" error hit, the bfgminer needs to be killed and restarted manually.   
