#! /usr/bin/bash

pushd ansible

echo "Running homelab Ansible configuration"

if ! tailscale status > /dev/null; then
	# tailscale is not running

	echo "Starting tailscale"
	tailscale up
fi

echo "Switching to friByte tailnet"
tailscale switch headscale.fribyte.no

ansible-playbook playbook_infra.yml --become-password-file .ansible_sudo_password --vault-password-file .ansible_vault_key
