#!/usr/bin/env bash
#
# Setup Ansible from scratch
# Install pip, pipx and ansible
# Install git and clone repository
#

# Check for sudo permissions
if ! [ $(id -u) = 0 ];
then
    echo "The script needs to run as root to allow program installation."
    echo "Usage: sudo ./ansible-setup.sh"
    exit 1
fi

# Check for pip
if ! command -v python3 -m pip --version &> /dev/null
then
    sudo apt update
    sudo apt install python3-pip
    python3 -m pip install --upgrade pip
fi

# Check for pipx
if ! command -v pipx --version &> /dev/null
then
    python3 -m pip install --user pipx
    python3 -m pipx ensurepath
    python3 -m pip install --user -U pipx
fi

# Check for ansible
if ! command -v ansible --version &> /dev/null
then
    pipx install ansible
fi

# Check for git
if ! command -v git --version &> /dev/null
then
    sudo apt update
    sudo apt install git
fi

# Clone repository
ANSIBLE_REPO="P-Miranda/ansible-workstation"
git clone https://github.com/$ANSIBLE_REPO.git
cd basename $ANSIBLE_REPO

echo "Ansible Workstation Setup Complete"
echo "System ready to execute Ansible plays"
echo "Check README for more information"
