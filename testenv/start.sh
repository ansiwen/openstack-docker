#!/bin/bash

uid=`stat -c %u /src`
gid=`stat -c %g /src`

echo "docker:x:$uid:$gid::/tmp:/bin/bash" >> /etc/passwd

cd /src

if [ -z "$*" ] ; then
  su docker
else
  su docker -c "$*"
fi
