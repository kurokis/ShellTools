#!/bin/bash

# This scripts searches for Raspberry Pi in wireless network
# dependencies: arp-scan
# all Raspberry Pi has MAC address starting with b8:27:eb
# for Ubuntu 15 or later, interface name is wlo1
# for Ubuntu 14, interface name is wlan0


# run arp-scan
echo ""
echo "Finding Raspberry Pi in your network..."
echo "-------------------------------------------------"
	if lsb_release -s -d | grep -q 16; then
		results=$(sudo arp-scan -I wlo1 -l)
	else
		results=$(sudo arp-scan -I wlan0 -l)
	fi
	# show arp-scan results
	echo "$results"
echo "-------------------------------------------------"


# extract IP address
rpi_ip_address=$(echo "$results" | grep b8:27:eb | sed 's/\t.*$//' )


# check if empty
if [[ -z "$rpi_ip_address" ]]; then
	echo ""
	echo "Raspberry Pi not found"
else
	echo ""
	echo "Raspberry Pi found at" $rpi_ip_address
	echo "Connecting..."
	ssh pi@$rpi_ip_address
fi



