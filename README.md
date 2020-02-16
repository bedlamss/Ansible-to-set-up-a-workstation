# Ansible to set up a workstation

## Requirements

-  Ubuntu 20.04 LTS

## Include:

Programming tools:

- Ruby
- RVM
- Node.js
- NPM



Git:

- [GitKraken](https://www.gitkraken.com)



Messengers:

- [Telegram](https://telegram.org)
- [Slack](https://slack.com)
- [Skype](https://www.skype.com)



Code editors:

- [VS Code](https://code.visualstudio.com)
- [Atom](https://atom.io)
- [Sublime Text 3](https://www.sublimetext.com/3)



Browser:

- Chromium



## How to use

  prepare os and install ansible

```bash
curl -s https://raw.githubusercontent.com/bedlamss/playbook-web-development/master/prepare_system.sh | /bin/bash
```

clone this repo

`git clone https://github.com/bedlamss/playbook-web-development.git`

cd to the directory

`cd Ansible-to-set-up-a-workstation`

```
# run the playbook
sudo  ./workstation.yml
```

