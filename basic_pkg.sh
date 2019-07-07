#!/bin/bash
apt-get update
apt-get install -y --no-install-recommends sudo net-tools squashfs-tools gcc g++ cmake make autoconf curl unzip openjdk-8-jdk
rm -rf /var/lib/apt/lists/*  
