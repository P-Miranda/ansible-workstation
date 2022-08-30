# Ansible Workstation
Repository to manage personal workstations using
[Ansible](https://www.ansible.com/).

## Ansible Setup

### Prerequisites
Your user needs `sudo` privileges:
```Bash
su root
# enter root password
/usr/sbin/usermod -a -G sudo <USER>
```

### Setup Process
1. Download and run `setup-ansible.sh` script from repository:
```Bash
wget --no-check-certificate --content-disposition https://raw.githubusercontent.com/P-Miranda/ansible-workstation/main/setup-ansible.sh
chmod +x setup-ansible.sh
./setup-ansible.sh
```

## Run Playbooks
```
ansible-playbook main.yml -K --ask-vault-pass
```
- `main.yml` playbook to run
- `-K` ask for become sudo password
- `--ask-vault-pass` ask vault password

## Vault/Encrypted Values
- Create ansible vault:
```
ansible-vault create [file]
```
- Edit the ansible vault:
```
ansible-vault edit [file]
```
- To run playboot add the flag: `--ask-vault-pass`
