#!/bin/sh

sudo cp firewall /etc/init.d/
if [ -e /etc/firewall.conf ]; then
  echo 'Configuration file exists, do you want to overwrite it? (y/n)';
  read overwrite;
  if [ $overwrite == 'y' ]; then
    sudo cp firewall.conf /etc/;
  fi
else
  sudo cp firewall.conf /etc/;
fi
sudo chown root:root /etc/init.d/firewall && sudo chown root:root /etc/firewall.conf && sudo chmod 700 /etc/init.d/firewall && sudo chmod 600 /etc/firewall.conf
