#!/bin/bash
cd /home/container || exit 1
INTERNAL_IP=$( ip route get 1 | awk '{print $NF;exit}' )
export INTERNAL_IP
MODIFIED_STARTUP=$( eval echo $( echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g' ) )
echo ":/home/container$ ${MODIFIED_STARTUP}"
eval ${MODIFIED_STARTUP}
