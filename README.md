
---

## Deploy `clickhouse, vector and lightouse`

### Requirements

- Ansible 2.13.2
- Terraform 1.2.5
- Python 3.8.10
- Task version: 3.14.0



Ansible playbook for deploy Clickhouse pakages, Vector and lightouse on three nodes to Yandex Cloud. 
clickhouse node: Install clickhouse-server, clickhouse-client, clickhouse-common
vector node: Install vector
lighhouse node: Install nginx and lighhouse

For this project inventory file is generated automatically
To use this playbook you need to specify your clickhouse server ip address in group_vars/vector.yml 
```YAML
Example:
  ...
  sinks:
    clickhouse:
      type: clickhouse
      inputs:
        - log
      database: logs
      endpoint: http://51.250.75.6:8123
      table: my_table
      compression: gzip
      healthcheck: false
      skip_unknown_fields: true

```


| Variable                            | Comment                                                                        | Required | Example/Default                |
| ----------------------------------- | ------------------------------------------------------------------------------ | -------- | ------------------------------ |
| clickhouse_version                | Version of clickhouse                       | yes      | `22.3.3.44`                  |
| clickhouse_packages               | List of packages                                      | yes      | `clickhouse-server` `clickhouse-client` `clickhouse-common`                 |
| ssh_key       | Use your own ssh keys                                                        | no      | ``                     |
| vector_version          | Version of Vector                           | yes      | `0.22.0`                     |
| lighthouse_vcs          | Repository link                          | yes      | `https://github.com/VKCOM/lighthouse.git`                     |
| lighthouse_location_dir          | System directory                         | yes      | `/home/centos/lighhouse`                     |

Deploy stack.
Example:
```
git clone https://github.com/CentOsss/clickhouse.git && cd clickhouse

task deploy # create infrastructure in yandex cloud

change ip address in group_vars/vector.yml and run

task playbook # play ansible playbook

task destroy # for destroy your infrastructure 
```

### License

### Author Information
Ostap Shvalev, mindgam@gmail.com
