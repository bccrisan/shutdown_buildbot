#!/bin/bash

for hosts in $(< windows_hosts.txt); do ipmitool -U releng -P cpnzA8mAr5xj -H $hosts-mgmt.build.mozilla.org chassis power down; echo $hosts;  done
