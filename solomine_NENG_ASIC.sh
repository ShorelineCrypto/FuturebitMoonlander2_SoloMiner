#! /bin/bash

# rotate between 1 full node and 1 pool
# base difficulty > 1
#/home/user/FutureBit/bfgminer_5.4.2-futurebit2_linux_x86_64/bfgminer --scrypt --url=127.0.0.1:8376  -u  wallet2user   -p wallet2passwd -o stratum+tcp://findblocks.com:3333 -u  NT6qBy9t1MgRuU8hq8xGWYJxnVqYbFutds -p  1,d=128,c=NENG   --retries  -1 --rotate 1 --no-stratum  --net-delay -S /dev/ttyUSB0 --set MLD:clock=600

# rotate on two full nodes
# base diff <  1
/home/user/FutureBit/bfgminer_5.4.2-futurebit2_linux_x86_64/bfgminer --scrypt --url=127.0.0.1:8376  -u  wallet2user   -p wallet2passwd  --url=127.0.0.1:8378 -u wallet5user -p  wallet5passwd  --retries  -1  --no-submit-stale  --rotate 1 --no-stratum  --net-delay -S /dev/ttyUSB0 --set MLD:clock=384

## Experimental, more rewards on resets, but still have some "ALL POOL DEAD" error triggered
# /home/user/FutureBit/bfgminer_5.4.2-futurebit2_linux_x86_64/bfgminer --scrypt --url=127.0.0.1:8376  -u  wallet2user   -p wallet2passwd  --url=127.0.0.1:8378 -u wallet5user -p  wallet5passwd  --retries  -1  --expiry 10 --no-submit-stale   --rotate 1 --no-stratum  --net-delay -S /dev/ttyUSB0 --set MLD:clock=384

# base diff > 1
# /home/user/FutureBit/bfgminer_5.4.2-futurebit2_linux_x86_64/bfgminer --scrypt --url=127.0.0.1:8376  -u  wallet2user   -p wallet2passwd  --url=127.0.0.1:8378 -u wallet5user -p  wallet5passwd  --retries  -1  --no-submit-stale  --rotate 1 --no-stratum  --net-delay -S /dev/ttyUSB0 --set MLD:clock=600


