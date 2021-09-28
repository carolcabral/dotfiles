#!/bin/sh

if [ $# -lt 2 ]; then
    echo "USAGE: ./connect_pi.sh  host port "
else 
    
    host=${1} 
    port=${2}

    #Connect to rasp thru remote.it
    ssh -l pi proxy${host}.rt3.io -p ${port}

fi




