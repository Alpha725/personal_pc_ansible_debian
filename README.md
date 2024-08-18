# personal_pc_ansible_debian

## Usage

To use this playbook you need to have a user called `${username}` with an ssh key configured and the following entry in `/etc/sudoers.d/00-${username}-sudo`

```bash
${username} ALL=(ALL) NOPASSWD:ALL
```

You will also need to setup an ssh key auth to the host. I am not explaining how to do that.

You will then need to update the `hosts.yaml` ansible_user to your `${username}` and then the ip address of the host/hosts address.

Once you have done all the above run the following command:
```bash
ansible-playbook -i hosts.yaml site.yaml
```
If you have specify the key manually for any reason use the following:
```bash
ansible-playbook -i hosts.yaml --private-key=${path_to_key_here} site.yaml
```

