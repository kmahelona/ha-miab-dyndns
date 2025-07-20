# Mail In A Box Dynamic DNS for Home Assistant

```yaml
server: box.example.com
domain: ha.example.com
username: miab_user
password: miab_password
```


## Example Automation
```yaml
alias: Renew DNS
description: Renew DNS
triggers:
  - at: "00:00:00"
    trigger: time
actions:
  - data:
      addon: local_miab_dyndns
    action: hassio.addon_restart
mode: single
initial_state: true
```
