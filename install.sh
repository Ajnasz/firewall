#!/bin/sh

sudo cp firewall /etc/init.d/ && sudo cp firewall.conf /etc/ && sudo chown root:root /etc/init.d/firewall && sudo chown root:root /etc/firewall.conf && sudo chmod 700 /etc/init.d/firewall && sudo chmod 600 /etc/firewall.conf
