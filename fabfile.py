from fabric.operations import sudo,run

def hostname():
  sudo('hostname', pty=True)

def nscd_status():
  sudo('/etc/init.d/nscd status', pty=True)

def nscd_flush():
  sudo('/usr/sbin/nscd -i hosts', pty=True)

def mogile_schedule_check():
  sudo("for i in `mount | grep mogdata | awk {'print $1'} | awk -F '/' {'print $3'}`; do cat /sys/block/$i/queue/scheduler; done", pty=True)

def mogile_schedule_set():
  sudo("for i in `mount | grep mogdata | awk {'print $1'} | awk -F '/' {'print $3'}`; do echo deadline > /sys/block/$i/queue/scheduler; done", pty=True)

def get_size():
  sudo('df -h', pty=True)

def lldp():
  sudo('lldpctl', pty=True)
