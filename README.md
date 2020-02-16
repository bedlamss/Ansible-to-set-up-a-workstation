# Ansible to set up a workstation

Playbook for setup web-developers environment 

## Requirements

-  Ubuntu 20.04 LTS

## Include:

Messengers:

- Telegram
- Slack
- Skype



Code tools:

- [VS Code](https://code.visualstudio.com)

- Atom
- Sublime Text 3



## How to use

  prepare os and install ansible

```bash
curl -s https://raw.githubusercontent.com/bedlamss/Ansible-to-set-up-a-workstation/master/prepare_system.sh | /bin/bash
```

clone this repo

`git clone https://github.com/bedlamss/Ansible-to-set-up-a-workstation.git`

cd to ansible directory

`cd Ansible-to-set-up-a-workstation`

```
# run the playbook
sudo  ./workstation.yml
```

