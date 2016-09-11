#!/bin/sh
## one script to be used by travis, jenkins, packer...

umask 022

rolesdir=$(dirname $0)/..

[ ! -d $rolesdir/lxd ] && git clone https://github.com/juju4/ansible-lxd $rolesdir/lxd

