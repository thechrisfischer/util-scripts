from fabric.api import *
from fabric import *

env.user = 'cfischer'
env.password = '30nFlux12!!@@'

def lsmod_iTCO():
  sudo('lsmod | grep iTCO', pty=True)

def lsmod():
  sudo('lsmod', pty=True)

def rmmod_iTCO():
  sudo('rmmod iTCO_wdt && rmmod iTCO_vendor_support', pty=True)

def disk_size():
  sudo('df -h', pty=True)

def run_puppet():
  sudo('/usr/sbin/puppetd -tv', pty=True)

def supervisor_update():
  sudo('/usr/bin/supervisorctl update', pty=True)

def virsh_list():
  sudo('/usr/bin/virsh list', pty=True)

def scribe_size():
  sudo('/usr/bin/du -hc --max-depth=1 /tmp/scribe/', pty=True)
