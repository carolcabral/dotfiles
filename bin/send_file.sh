#!/bin/sh

#ssh-copy-id <USERNAME>@<IP-ADDRESS>
#ssh-add

if [ $# -lt 2 ]; then
    echo "USAGE: ./send_file.sh  path/to/file path/to/destiny [ip_address]"
else 

    if [ $# -lt 3 ]; then
		echo "Warning: IP Address as default (192.168.0.72)!"
		rasp_ip='192.168.0.72'

	else
        rasp_ip=${3}
	fi

    path_file=${1} 
    path_destiny=${2}
    
    #Copy to rasp
    scp ${path_file} pi@${rasp_ip}:${path_destiny}
fi
