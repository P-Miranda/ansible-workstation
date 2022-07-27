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
ansible-playbook main.yml -K
```
- `main.yml` playbook to run
- `-K` ask for become sudo password

## TODO
- Add bash_local template
- Setup ssh?
    - how to manage ssh keys?
    - setup .ssh/config
- Install programs:
    - discord
- Python setup:
    - pyenv
    - pipx
    - flake8
    - black
    - mypy
    - tox
- C/C++ setup
    - install clang and other tools
- Hardware setup
    - riscv toolchain
    - icarus
    - verilator
- NAS Setup
