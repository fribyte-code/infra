# friByte Ansible infra

```
   ___            ____             __             
 /'___\        __/\  _`\          /\ \__          
/\ \__/  _ __ /\_\ \ \L\ \  __  __\ \ ,_\    __   
\ \ ,__\/\`'__\/\ \ \  _ <'/\ \/\ \\ \ \/  /'__`\ 
 \ \ \_/\ \ \/ \ \ \ \ \L\ \ \ \_\ \\ \ \_/\  __/ 
  \ \_\  \ \_\  \ \_\ \____/\/`____ \\ \__\ \____\
   \/_/   \/_/   \/_/\/___/  `/___/> \\/__/\/____/
                                /\___/            
                                \/__/             
```

## Ansible

Ansible is a technology that allows us to write and maintain our infrastructure as code. All additions and changes are tracked in git for a (hopefully) complete history.

> Not everything in our infra will be implemented in this repo but we would like to provide the following as a form of transparancy and learning resource when it comes to infrastructure as code

- [friByte Ansible workshop](https://github.com/fribyte-code/ansible_workshop_2025) for a quick hands on with how Ansible works
- [Ansible docs](https://docs.ansible.com/projects/ansible/latest/index.html)

### Setup

First create a sudo password file and vault key file to provide the required credentials to Ansible

```bash
nano ./ansible/.ansible_sudo_password
```

The vault key is a secret encryption key that can be accessed from Vaultwarden

```bash
nano ./ansible/.ansible_vault_key
```

Then setup Ansible by installing the required dependencies using the following script

```bash
./setup_ansible.sh
```

### Running Ansible scripts

> Make sure you have access to the friByte tailnet and are logged in to reach the nodes via ssh

To run Ansible configurations

```bash
./run_config.sh
```

To run Ansible host system updates

```bash
./run_update.sh
```

To update the encrypted Ansbile group variables

```bash
./edit_group_variables.sh
```
