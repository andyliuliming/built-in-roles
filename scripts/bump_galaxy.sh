#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR/..
ansible-galaxy install geerlingguy.composer
ansible-galaxy install geerlingguy.php
ansible-galaxy install geerlingguy.glusterfs
ansible-galaxy install geerlingguy.firewall
ansible-galaxy install geerlingguy.mysql
ansible-galaxy install geerlingguy.redis
ansible-galaxy install geerlingguy.php-redis
ansible-galaxy install geerlingguy.php-mysql
ansible-galaxy install nginxinc.nginx
go generate
popd
