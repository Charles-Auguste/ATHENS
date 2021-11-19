#!/bin/bash 
sudo insmod  /opt/kernel/driver/gator.ko > /dev/null
sudo /opt/kernel/gatord&

