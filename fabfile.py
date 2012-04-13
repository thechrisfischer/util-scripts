from fabric.operations import sudo,run

def hostname():
  sudo('hostname', pty=True)

def nscd_status():
  sudo('/etc/init.d/nscd status', pty=True)

def nscd_flush():
  sudo('/usr/sbin/nscd -i hosts', pty=True)

def get_size():
  sudo('df -h', pty=True)
