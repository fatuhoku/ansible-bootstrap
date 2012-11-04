Ansible Bootstrap
==========================

Install Ansible by copying and pasting the following command:

RAW_URL: `ansible-bootstrap.sh`
`\curl -L RAW_URL | sh`

This command should be idempotent.
*TODO* be able to specify the version of Ansible.

Introduction
--------------------------

Ansible is a swiss army knife for provisioning and maintaining home directories.
It is therefore very useful to have 


Bootstrap process
--------------------------

### Key assumptions

 - we have (*complete and unfettered*) *sudo access to the local machine*
 - `curl`, `wget` and `apt-get` are the only available methods of 
   grabbing extra resources
 - Mac OS X doesn't have a decent package manager by default, we assume
   that the user has installed Homebrew.

### Bootstrapping Ansible

Here's a rundown of what the script does:

 - ensure there's a working package manager
 - install Python 2.7.3 + pip through package manager
 - install Ansible dependencies globally with pip
 - install Ansible

#### On Ubuntu

 - `aptitude` is already installed with any distribution
 - `sudo add-apt-repository ppa:rquillo/ansible`
 - `sudo apt-get update`
 - `sudo apt-get install ansible`

#### On Mac OS X

I endorse the use of Homebrew for package management under Max OS X. However
there exists no Homebrew Formula for installing Ansible. Until there is one,
we will install Ansible manually.
