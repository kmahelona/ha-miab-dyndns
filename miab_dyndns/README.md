# Mail In A Box Dynamic DNS for Home Assistant

<a href="https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fkmahelona%2Fha-miab-dyndns" target="_blank"><img src="https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg" alt="Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled." /></a>

![Supports aarch64 Architecture][aarch64-shield] ![Supports amd64 Architecture][amd64-shield] ![Supports armhf Architecture][armhf-shield] ![Supports armv7 Architecture][armv7-shield] ![Supports i386 Architecture][i386-shield]


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
