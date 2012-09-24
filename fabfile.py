from fabric.operations import sudo,run

def hostname():
  sudo('hostname', pty=True)

def nscd_status():
  sudo('/etc/init.d/nscd status', pty=True)

def get_bmc_ip_address():
  sudo('ipmitool lan print 1 | grep "IP Address"', pty=True)

def check_load():
  sudo("uptime | awk '{print $8 $9 $10 $11 $12}'", pty=True)

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
