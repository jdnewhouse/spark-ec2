#!/bin/bash

pushd /root > /dev/null

if [ -d "updates" ]; then
  echo "Updates seems to be installed. Exiting."
  return 0
fi

sudo yum -y update
sudo alternatives --set python /usr/bin/python2.7

popd > /dev/null
