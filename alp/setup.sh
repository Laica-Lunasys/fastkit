#!/bin/bash
set -e
cd "$(dirname "$0")"
source ../utils/*.sh

if [ $UID != 0 ]; then
    echo "$_ERROR Must be root"
    exit 1
fi

_check_requirements "wget"
mkdir -p tmp && cd tmp
wget https://github.com/tkuchiki/alp/releases/download/v1.0.3/alp_linux_amd64.zip
unzip ./alp_linux_amd64.zip
sudo install ./alp /usr/local/bin
