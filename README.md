
---

## Deploy `clickhouse and vector`

### Requirements

- Ansible 2.13.2
- Terraform 1.2.5
- Python 3.8.10
- Task version: 3.14.0



Ansible playbook for deploy Clickhouse pakages and Vector on one node to Yandex Cloud. 
Install clickhouse-server, clickhouse-client, clickhouse-common and Vector.

To use this playbook you need to specify your ip address, host and user in your `inventory/prod.yml` file after deployed node01.cloud 
```YAML
Example:
  ...
  clickhouse:
  hosts:
    clickhouse-01:
      ansible_host: 51.250.95.242
      ansible_connection: ssh
      remote_user: centos
      private_key_file: { ssh_key }
      host_key_checking: False
```



| Variable                            | Comment                                                                        | Required | Example/Default                |
| ----------------------------------- | ------------------------------------------------------------------------------ | -------- | ------------------------------ |
| clickhouse_version                | Version of clickhouse                       | yes      | `22.3.3.44`                  |
| clickhouse_packages               | List of packages                                      | yes      | `clickhouse-server` `clickhouse-client` `clickhouse-common`                 |
| ssh_key       | Use your own ssh keys                                                        | no      | ``                     |
| vector_version          | Version of Vector                           | yes      | `0.22.0`                     |





### License

### Author Information
Ostap Shvalev, mindgam@gmail.com
