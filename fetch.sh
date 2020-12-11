#! /usr/bin/env bash


if [ -z $bundle_wd ]; then
  bundle_wd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
fi

echo $bundle_wd

if [ ! -d $bundle_wd/i2p.i2p ]; then
  git clone https://i2pgit.org/i2p-hackers/i2p.i2p.git $bundle_wd/i2p.i2p
fi
cd $bundle_wd/i2p.i2p
git pull --all
cd $bundle_wd
