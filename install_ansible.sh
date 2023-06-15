#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to the PATH in your .zshrc or .bash_profile file.
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>/Users/$(whoami)/.zshrc
eval "$(/opt/homebrew/bin/brew shellenv)"

# Update Homebrew
brew update

# Install Python3
brew install python@3.11

# Install Pip3
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py

# Install Ansible
pip3 install ansible

# Verify Ansible installation
ansible --version
ansible-galaxy collection install community.general
ansible-playbook install.yaml --ask-become-pass
