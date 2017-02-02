[![Build Status - Master](https://travis-ci.org/juju4/ansible-lxcpublish.svg?branch=master)](https://travis-ci.org/juju4/ansible-lxcpublish)
[![Build Status - Devel](https://travis-ci.org/juju4/ansible-lxcpublish.svg?branch=devel)](https://travis-ci.org/juju4/ansible-lxcpublish/branches)
# LXC containers publisher ansible role

Ansible role to publish lxc images on target server
It just stop existing containers and publish them.

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 2.0
 * 2.2

### Operating systems

Tested with vagrant on Ubuntu 14.04, Kitchen test with trusty and centos7

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.lxcpublish
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).

Once you ensured all necessary roles are present, You can test with:
```
$ cd /path/to/roles/juju4.lxcpublish
$ kitchen verify
$ kitchen login
```
or
```
$ cd /path/to/roles/juju4.lxcpublish/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues

* Kitchen Testing (lxd) fails on ubuntu xenial on tasks 'list existing lxc images'
works fine in kitchen/virtualbox.


## License

BSD 2-clause

