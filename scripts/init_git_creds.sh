!#/usr/bin/bash

USER="emmacpolson@gmail.com"
NAME="e-polson"

git config --global --list

git config --global user.email ${USER}
git config --global user.name ${NAME}

git config --global --list
