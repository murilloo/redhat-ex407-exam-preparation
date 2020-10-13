#!/bin/bash

# Install Git
sudo yum install -y git

# Create requirements file
cat <<EOF> roles/requirements.yml
- src: https://github.com/geerlingguy/ansible-role-redis
  name: redis
  version: master
  scm: git

- src: geerlingguy.nginx
  name: nginx
EOF

# Run Ansible galaxy
cd roles; ansible-galaxy install -r requirements.yml -p .
