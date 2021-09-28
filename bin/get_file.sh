#!/bin/bash

#ssh-copy-id <USERNAME>@<IP-ADDRESS>
#ssh-add

echo "OI"

teste=$(ping raspberrypi.local -c 1)
 
#$(ping raspberrypi.local -c 1)
 #`ping raspberrypi.local -c 1`
echo "${teste}"

		
if [ $# -lt 2 ]; then
    echo "USAGE: ./get_file.sh  path/to/file path/to/destiny [ip_address]"
else 

    if [ $# -lt 3 ]; then
       echo "Warning: IP Address as default (192.168.0.72)!"
		rasp_ip='192.168.0.72'

	else
        rasp_ip=${3}
	fi

    path_file=${1} 
    path_destiny=${2}
    
    #Copy from rasp
    scp pi@${rasp_ip}:${path_file} ${path_destiny}
fi
