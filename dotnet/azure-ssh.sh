#! /bin/bash

echo "Host ssh.dev.azure.com
  PubkeyAcceptedKeyTypes=ssh-rsa" >> ~/.ssh/config
sudo chmod 600 ~/.ssh/config
