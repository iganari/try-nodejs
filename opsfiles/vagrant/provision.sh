#!/bin/bash

set -x 

: "ansible-playbook ssh" & {
# : "ansible-playbook ssh" || {
chmod 600 ssh/id_rsa-try-nodejs
# ansible-playbook        --private-key='ssh/id_rsa-try-nodejs' -i playbook/vagrant playbook/site.yml && vagrant halt && vagrant up 
ansible-playbook -vvv --private-key='ssh/id_rsa-try-nodejs' -i playbook/vagrant playbook/site.yml && vagrant halt && vagrant up
}
