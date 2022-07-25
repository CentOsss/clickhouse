
---

# Ansible playbook `clickhouse and vector`

Playbook to deploy Clickhouse Server and Vector

## Requirements

- Ansible 2.13.2
- Python 3.8.10

This playbook download and install clickhouse pakages and Vector on the same node. 

 

## variables

| Variable                            | Comment                                                                        | Required | Example/Default                |
| ----------------------------------- | ------------------------------------------------------------------------------ | -------- | ------------------------------ |
| clickhouse_version                | Version of clickhouse                       | yes      | `22.3.3.44`                  |
| clickhouse_packages               | List of packages                                      | yes      | `clickhouse-server`                  |
| ssh_key       | Use your own ssh keys                                                        | no      | ``                     |
| vector_version          | Version of Vector                           | yes      | `12345678`                     |

## Example Playbook

In playbook:

```YAML
- hosts: some-host
  become: true
  ...
```

To use this playbook you need to specify your ip address, host and user in inventory file

Example:

```YAML
ansible_host: 51.250.95.242
      ansible_connection: ssh
      remote_user: centos
```

## License

## Author Information
Ostap Shvalev, mindgam@gmail.com
