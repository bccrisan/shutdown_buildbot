#!/bin/bash

for host in $(< linux_hosts.txt);
do
  ssh -tttq -o StrictHostKeyChecking=no -o CheckHostIP=no -o ConnectTimeout=15  root@$host "sudo shutdown now"
done
