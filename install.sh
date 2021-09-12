#!/bin/sh
# Tangle files with Org mode

echo "install flake8"
pip install flake8
echo "cp init.src.el to init.el"
cp init.src.el init.el
# echo "install linux kernel headers"
# sudo apt-get install linux-kernel-headers kernel-package
echo "create directory snippets"
mkdir snippets

echo "install global for gtags"
sudo apt install -y global
