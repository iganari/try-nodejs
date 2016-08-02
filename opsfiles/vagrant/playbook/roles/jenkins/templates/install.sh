#!/bin/bash

set -x

: "add the key for the Debian package repository of Jenkins" & {
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
}

: "add the following entry" & {
echo 'deb http://pkg.jenkins-ci.org/debian binary/' >> /etc/apt/sources.list
}

: "Install Jenkins" & {
apt-get -y update
apt-get -y install jenkins
}
