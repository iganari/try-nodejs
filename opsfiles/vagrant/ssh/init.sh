#!/bin/bash

set -x

: "make authorized file" & {
mkdir /root/.ssh
chmod 700 /root/.ssh
touch /root/.ssh/authorized_keys
}

: "insert authorized" & {
cat << __EOF__ > /root/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDifH/seCM9BahWvKYvzDDLiI5Wj4mVX7CjDyFbuFG2s0c1rIqEYPKzlZ+nJiZ++3c0IwudE4b4IDFJ/2OhavuEuBOIGcxATfAn1Va3Vg06XJe71rWRluSPaxieh0zdgeX3P46sLOJapmPs3uJ6EmveP+W43X8OC3hHlv2c1v+a7IhvsEuLvgSN2DSdKhpR0GynKsgMwPUkxOyI8ycOxrUcI01gqWwsucvNjg0JPoiQ2r3KCBvxVQMjsF3xVmK4Q+OmJWRQPhHwRVMMoE+B0CP1nKlvLnaZFt/jO44/tj1jD5rf5oYOgIdQzwbB8jfnZgqhFeX+kf1qVwNWJ86REd/l for try-nodejs
__EOF__
}
