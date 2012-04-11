from fabric.operations import sudo,run

def run_bitch():
  sudo('cat /var/log/messages | grep iTCO_wdt', pty=True)

