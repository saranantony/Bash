#!/bin/bash
echo "Please provide the ip addr range or network range to search:"
read nw
echo "Here are the list of free IP address in range $nw"
sudo nmap -v -sn $nw -oG -| awk '/Status: Down/{print $2}'
 
