#!/bin/bash

# This scripts searches for Raspberry Pi in wireless network
# dependencies: arp-scan
# all Raspberry Pi has MAC address starting with b8:27:eb
# for Ubuntu 15 or later, interface name is wlo1
# for Ubuntu 14, interface name is wlan0

if lsb_release -s -d | grep 16; then
	echo "Finding Raspberry Pi in your network..."
	echo "-------------------"
	sudo arp-scan -I wlo1 -l | grep b8:27:eb
	echo "-------------------"
else
	echo "Finding Raspberry Pi in your network..."
	echo "-------------------"
	sudo arp-scan -I wlan0 -l | grep b8:27:eb
	echo "-------------------"
fi

