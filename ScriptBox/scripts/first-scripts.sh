#! /bin/bash

# This script prints system info
echo
echo "Welcome to BaseScript."
echo
# checking system uptime
echo "###############################"
echo "The Uptime of the system is:"
uptime
echo 
# Cheking system memory utilization
echo "################################"
echo "Memory Utilization is:"
free -m
echo
# checking system Disk Utilization
echo "################################"
echo "Disk utilization is:"
df -kh
echo 
echo "###################################"

