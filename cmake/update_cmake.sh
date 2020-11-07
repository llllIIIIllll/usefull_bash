#!/bin/bash

wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null |  apt-key add -

sudo echo  "deb https://apt.kitware.com/ubuntu/ bionic main" | sudo tee -a /etc/apt/sources.list

sudo apt-get update
sudo apt-get install cmake