#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR/..
  echo "$( pwd )"
  export ANSIBLE_CONFIG=./ansible.cfg
  ansible-playbook -i inventories/sample sample.yml -vvv
popd