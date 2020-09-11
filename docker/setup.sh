#!/bin/bash
set -e
cd "$(dirname "$0")"
source ../utils/*.sh

_check_requirements "curl"
curl -fsSL https://get.docker.com/ | bash
