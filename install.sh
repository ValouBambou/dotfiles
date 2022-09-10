#! /bin/bash

cd config
for dir in $(ls)
do
  echo "Installing $dir..."
  cd $dir
  ./install.sh
  cd ..
  echo "$dir install done!"
done
