#!/bin/sh

if [ $# -lt 5 ]; then
    echo "USAGE: ./send_remote.sh  path/to/file path/to/destiny port host"
else 

    path_file=${1} 
    path_destiny=${2}
    port=${3}
    host=${4}

    #Copy to rasp
    scp -P ${port} ${path_file} pi@${host}:${path_destiny}

fi


   scp -P 34580 pi@proxy19.rt3.io:/var/www ./var/ -r




