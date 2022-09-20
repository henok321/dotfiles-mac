#!/bin/bash

VAULT_ID="Tech"
VAULT_ANSIBLE_NAME="Ansible-Vault"

echo $(op item get --vault $VAULT_ID $VAULT_ANSIBLE_NAME --fields label=password)
