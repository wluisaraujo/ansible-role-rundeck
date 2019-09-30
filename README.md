[![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-Rundeck-blue.svg)](https://galaxy.ansible.com/wluisaraujo/iac-ansible-rundeck) [![Build Status](https://travis-ci.org/wluisaraujo/ansible-role-rundeck.svg?branch=master)](https://travis-ci.org/wluisaraujo/ansible-role-rundeck)

# IaC: with [Ansible](https://www.ansible.com) role to install and configure [Rundeck](http://rundeck.org/)
------------

Description
------------

 * Stands up Rundeck on RHEL/CentOS
 
Requirements
------------

 * Java
 * Rundeck Repo

Installation
------------

```console
vagrant@localhost:~$ ansible-galaxy install wluisaraujo.rundeck
vagrant@localhost:~$ ansible-galaxy install -r wluisaraujo.rundeck/requirements.txt
```

Role Variables
--------------

[defaults/main.yml](defaults/main.yml)

Dependencies
------------

* None

Example Playbook
----------------
```yaml
---
- hosts: localhost
  vars:
    - name: value
  roles:
    - rundeck
```

----------------
[![Licence](https://img.shields.io/badge/License-GPL%20v3-red.svg)](https://www.gnu.org/licenses/gpl-3.0.pt-br.html)
