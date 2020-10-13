#!/bin/bash

# Create Secret file
echo "reallysafepw" > secret.txt

# Create Vault
ansible-vault create lock.yml --vault-password-file=secret.txt
