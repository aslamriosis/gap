#!/bin/bash
user="$(whoami)"
path=`pwd`
cd $path
sudo chown -R www-data:$user * && sudo chmod -R 775 *
if [ $? -eq 0 ]; then
  echo "Permission granted"
else
  echo "Permission denied"
fi
