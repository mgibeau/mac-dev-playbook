#!/usr/bin/env bash

set -e;
mkdir -p "$HOME/.mac-dev/"
cd "$HOME/.mac-dev/"

# Install requirements
sudo easy_install pip
sudo pip install ansible

# Grab latest playbook and unzip
curl -LO https://github.com/mgibeau/mac-dev-playbook/archive/master.zip
unzip master.zip
cd mac-dev-playbook

# Install deps + run
ansible-galaxy install -r requirements.yml
ansible-playbook main.yml -i inventory -K

echo "Done!"
