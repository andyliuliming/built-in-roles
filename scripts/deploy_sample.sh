#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR/..
    ansible-playbook -i inventories/sample sample.yml -vvv
popd