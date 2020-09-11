#!/bin/bash
set -e

_INFO=$(printf "\e[1;32m->\e[m")
_TASK=$(printf "\e[1;34m::\e[m")
_WARN=$(printf "\e[1;33m!!\e[m")
_ERROR=$(printf "\e[1;31m!!\e[m")

_check_requirements() {
    REQUIRED=$@
    for v in ${REQUIRED[@]}; do
        if [ "$(which "$v" &> /dev/null; echo $?)" == 0 ]; then
            echo "$_INFO Passed: $v"
        else
            echo "$_ERROR Could not find requirements: $v"
            exit 1
        fi
    done
}
