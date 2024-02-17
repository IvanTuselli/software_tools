#!/bin/sh
sudo apt-get update -y
apt-get install file libc-bin binutils ltrace strace python3-pip unzip -y
bash -c "$(curl -fsSL https://gef.blah.cat/sh)"
pip3 install pwntools
wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.0.1_build/ghidra_11.0.1_PUBLIC_20240130.zip
unzip ghidra_11.0.1_PUBLIC_20240130.zip

