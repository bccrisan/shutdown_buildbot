#!/bin/bash

for host in $(< yosemite_hosts.txt);
do
  echo $hosts
  ssh -tttq -o StrictHostKeyChecking=no -o CheckHostIP=no -o ConnectTimeout=15  root@$host "shutdown -h now"
done

