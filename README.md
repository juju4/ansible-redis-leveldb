[![Build Status - Master](https://travis-ci.org/juju4/ansible-redis-leveldb.svg?branch=master)](https://travis-ci.org/juju4/ansible-redis-leveldb)
[![Build Status - Devel](https://travis-ci.org/juju4/ansible-redis-leveldb.svg?branch=devel)](https://travis-ci.org/juju4/ansible-redis-leveldb/branches)
# Redis-leveldb ansible role

Ansible role to setup Redis-leveldb, A redis-protocol compatible frontend to google's leveldb
https://github.com/KDr2/redis-leveldb

Installation is from source

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 1.9
 * 2.0
 * 2.2
 * 2.5

### Operating systems

Tested on Ubuntu 14.04, 16.04, 18.04 and centos7

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.redis-leveldb
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).
Default kitchen config (.kitchen.yml) is lxd-based, while (.kitchen.vagrant.yml) is vagrant/virtualbox based.

Once you ensured all necessary roles are present, You can test with:
```
$ gem install kitchen-ansible kitchen-lxd_cli kitchen-sync kitchen-vagrant
$ cd /path/to/roles/juju4.redis-leveldb
$ kitchen verify
$ kitchen login
$ KITCHEN_YAML=".kitchen.vagrant.yml" kitchen verify
```
or
```
$ cd /path/to/roles/juju4.redis-leveldb/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues


## License

BSD 2-clause

