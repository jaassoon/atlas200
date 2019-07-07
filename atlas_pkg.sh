#!/bin/bash
sudo apt-get update
sudo apt-get install -y --no-install-recommends libboost-all-dev libatlas-base-dev haveged python-skimage python3-skimage python-pip python3-pip liblmdb-dev libhdf5-serial-dev libsnappy-dev libleveldb-dev  graphviz  libxml2-dev libxml2 libzip-dev libssl-dev sqlite3 python-cycler python-matplotlib python-pil python-pyparsing python-dateutil python-tz python3-cycler python3-matplotlib python3-pil python3-pyparsing python3-dateutil python3-tz
rm -rf /var/lib/apt/lists/*
