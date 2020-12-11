#! /usr/bin/env sh

. ./fetch.sh
mkdir -p $bundle_wd/torrents
cd $bundle_wd/i2p.i2p
ant bundle 2>&1 | tail -n 10 > $bundle_wd/version
mv -v *.bundle* $bundle_wd/torrents
