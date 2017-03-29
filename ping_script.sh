#!/bin/bash

#ping scan the current network
for octet in {1..254}
do
        echo "Currently testing 172.19.37.$octet"
        ping -W 1 -c 1 172.19.37.$octet | grep ttl
done
