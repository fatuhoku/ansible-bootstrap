#!/bin/sh

if brew list | grep python &> /dev/null; then
	echo python is installed under Homebrew...
fi
echo Installing Ansible Python prerequisites using pip...
pip install paramiko PyYAML jinja
# Optionally upgrade prerequisites to latest versions
# pip install --upgrade paramiko PyYAML jinja

if type git; then
  echo Git is already installed.
else
  echo Git is not installed. Installing...
  sudo apt-get install git
fi

if type ansible; then
  echo Ansible is already installed.
else
  echo Ansible is not installed. Installing...
  git clone git://github.com/ansible/ansible.git /tmp/ansible.git
  cd /tmp/ansible.git
  sudo make install
fi
