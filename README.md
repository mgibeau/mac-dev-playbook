# MacOS developement environment provisionning playbook

This will run a series of tasks on the local machine to setup a development environment from scratch.

## Requirements

  1. Apple's command line tools (`xcode-select --install`).
  2. [Install Ansible](http://docs.ansible.com/intro_installation.html).

## Installing

### Install script

```
curl -o- https://raw.githubusercontent.com/mgibeau/mac-dev-playbook/master/install.sh | bash -x
```

### Manual install

```shell
$ ansible-galaxy install -r requirements.yml

$ ansible-playbook main.yml -i inventory -K
```

## Tags

This playbook supports partial provisionning through the following tags:
  - `homebrew`
  - `mas`
  - `macos`
  - `credentials`
  - `dev`

You can specify only the tags you'd like to (re)run:

```shell
$ ansible-playbook main.yml -i inventory -K --tags "homebrew, dev"
```

## Customization

Configuration can be customized through the [config.yml](./config.yml) file.

## References
* https://github.com/geerlingguy/mac-dev-playbook
* https://blog.vandenbrand.org/2016/01/04/how-to-automate-your-mac-os-x-setup-with-ansible/
* https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/
