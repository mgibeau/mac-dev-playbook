#!/usr/bin/env bash

INSTALLER_ROOT="$HOME/.mac-dev"
ANSIBLE_DIR="$INSTALLER_ROOT/mac-dev-playbook"

set -e;
mkdir -p "$INSTALLER_ROOT"
cd "$INSTALLER_ROOT"

# Install requirements
sudo easy_install pip
sudo pip install ansible

# Grab latest playbook and unzip
curl -LO https://github.com/mgibeau/mac-dev-playbook/archive/master.zip
rm -rf "$ANSIBLE_DIR"
unzip master.zip
rm master.zip
cd "$ANSIBLE_DIR"

# Install deps + run
ansible-galaxy install -r requirements.yml
ansible-playbook main.yml -i inventory -K

echo "Done!"
