#!/usr/bin/env bash
#
# Setup Ansible from scratch
# Install pip, pipx and ansible
# Install git and clone repository
#

# Check for pip
python3 -m pip --version &> /dev/null
if [ $? -ne 0 ];
then
    sudo apt update
    sudo apt install -y python3-pip python3-venv
    python3 -m pip install --upgrade pip
fi

# Check for pipx
PIPX="$HOME/.local/bin/pipx"
$PIPX --version &> /dev/null
if [ $? -ne 0 ];
then
    python3 -m pip install --user pipx
    python3 -m pipx ensurepath
    source ~/.bashrc
    python3 -m pip install --user -U pipx
fi

# Check for ansible
ansible --version &> /dev/null
if [ $? -ne 0 ];
then
    $PIPX install --include-deps ansible
fi

# Check for git
git --version &> /dev/null
if [ $? -ne 0 ];
then
    sudo apt update
    sudo apt install -y git
fi

# Clone repository
ANSIBLE_REPO="P-Miranda/ansible-workstation"
$USER_CMD git clone https://github.com/$ANSIBLE_REPO.git
cd $(basename $ANSIBLE_REPO)

echo "Ansible Workstation Setup Complete"
echo "System ready to execute Ansible plays"
echo "Check README for more information"
