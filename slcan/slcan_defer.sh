#!/bin/sh

# Bind the USBCAN device

slcand -o -c -f -s8 /dev/$1 can0

sleep 2

ifconfig can0 up 
