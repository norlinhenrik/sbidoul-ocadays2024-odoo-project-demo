#!/bin/bash

KEY_NAME="private_key"

# Create the .ssh directory if it doesn't exist
mkdir -p ~/.ssh

# Create the private key file and set the correct permissions
echo "$PRIVATE_KEY" > ~/.ssh/$KEY_NAME
chmod 600 ~/.ssh/$KEY_NAME

# Create the SSH config file for github.com
cat <<EOT >> ~/.ssh/config
# Add your SSH configuration here
Host github.com
  User $GH_USERNAME
  Hostname github.com
  IdentityFile ~/.ssh/$KEY_NAME
  IdentitiesOnly yes
EOT

# Ensure the correct permissions for the .ssh directory and config file
chmod 700 ~/.ssh
chmod 644 ~/.ssh/config