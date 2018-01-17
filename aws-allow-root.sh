#!/bin/bash
host="${1}"

if [ -z ${host} ]; then
        echo "Host is unset";
else
        ssh admin@${host} -n "sudo sed -i 's/.*ssh-rsa/ssh-rsa/' /root/.ssh/authorized_keys"
fi
