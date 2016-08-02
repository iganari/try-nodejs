#!/bin/bash

set -x 

: "ansible-playbook ssh" & {
# : "ansible-playbook ssh" || {
chmod 600 ssh/id_rsa-try-nodejs
ansible-playbook        --private-key='ssh/id_rsa-try-nodejs' -i playbook/vagrant playbook/site.yml && vagrant halt && vagrant up 
# ansible-playbook -vvv --private-key='ssh/id_rsa-try-nodejs' -i playbook/vagrant playbook/site.yml && vagrant halt && vagrant up
}

# : "Check Jenkins admin password" & {
: "Check Jenkins admin password" || {
sleep 30
echo -e "\n\nhttps://jenkins.hejda.org/\n\n"
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i ssh/id_rsa-jenkins-internal root@192.168.33.11 "cat /var/lib/jenkins/secrets/initialAdminPassword"
}

