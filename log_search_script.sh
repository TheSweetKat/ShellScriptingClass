#!/bin/bash

# search log for evidence of a sniffer running
IFS=$'\n'

for line in $(cat /var/log/messages | grep "promiscuous" )
do
        echo $line 
done

unset IFS