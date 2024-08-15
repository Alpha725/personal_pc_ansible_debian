# personal_pc_ansible_debian

## Usage

To use this playbook you need to have a user called alex with an ssh key configured and the following entry in `/etc/sudoers.d/00-alex-sudo`

```bash
alex ALL=(ALL) NOPASSWD:ALL
```

The playbook, while I can be run more than once, I would not recommend.

## To people who are not Alex
You just need to do a find and replace for alex and change it to "{{ ansible_user }}"
