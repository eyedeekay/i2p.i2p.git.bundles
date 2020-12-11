#! /usr/bin/env sh

. ./generate.sh

if [ -z $snark_dir ]; then
  if [ -d $HOME/.i2p/i2psnark ]; then
    snark_dir=$HOME/.i2p/i2psnark
  fi
  if [ -d /var/lib/i2p/i2p-config/i2psnark ]; then
    snark_dir=/var/lib/i2p/i2p-config/i2psnark
    user='sudo -u i2psvc'
  fi
fi

$user cp -v $bundle_wd/torrents/*.bundle $snark_dir
sleep 2
$user cp -v $bundle_wd/torrents/*.bundle.torrent $snark_dir
