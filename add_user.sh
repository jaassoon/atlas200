#!/bin/bash
useradd -d /home/huawei -m huawei
echo 'root:1234567890' |chpasswd
echo 'huawei:huawei' |chpasswd
chmod 750 /home/huawei
usermod -aG sudo huawei
