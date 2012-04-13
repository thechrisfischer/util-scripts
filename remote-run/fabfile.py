from fabric.operations import sudo,run

def lsmod_iTCO():
  sudo('lsmod | grep iTCO', pty=True)

def lsmod():
  sudo('lsmod', pty=True)

def rmmod_iTCO():
  sudo('rmmod iTCO_wdt && rmmod iTCO_vendor_support', pty=True)

def disk_size():
  sudo('df -h', pty=True)
