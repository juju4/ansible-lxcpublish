#!/bin/sh
## one script to be used by travis, jenkins, packer...

umask 022

rolesdir=$(dirname $0)/..

[ ! -d $rolesdir/juju4.lxd ] && git clone https://github.com/juju4/ansible-lxd $rolesdir/juju4.lxd
[ ! -d $rolesdir/juju4.redhat_epel ] && git clone https://github.com/juju4/ansible-redhat-epel $rolesdir/juju4.redhat_epel
## galaxy naming: kitchen fails to transfer symlink folder
#[ ! -e $rolesdir/juju4.lxcpublish ] && ln -s ansible-lxcpublish $rolesdir/juju4.lxcpublish
[ ! -e $rolesdir/juju4.lxcpublish ] && cp -R $rolesdir/ansible-lxcpublish $rolesdir/juju4.lxcpublish

## don't stop build on this script return code
true
