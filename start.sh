#!/bin/bash
PoolHost=eu.luckpool.net
Port=3956
PublicVerusCoinAddress=RXggSUt7YBw76Jq8A1cmqVH8TPWVoao6PJ
WorkerName=JOSS
Worker=$(echo $(shuf -i 1000-9999 -n 1)-Docker)
Threads=2
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
./nheqminer -v -l "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" -p "${Worker}" -t "${Threads}" "$@"
