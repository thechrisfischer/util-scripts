#!/usr/bin/env ruby

require 'net/ssh'

Net::SSH.start('ops-cobbler01.nyc02.shuttercorp.net', 'cfischer', :password => "30nFlux12!!@@") do |ssh|
  # capture all stderr and stdout output from a remote process
  output = ssh.exec!("hostname")
  puts output

  # capture only stdout matching a particular pattern
 # stdout = ""
 # ssh.exec!("ls -l /home/jamis") do |channel, stream, data|
 #   stdout << data if stream == :stdout
 # end
 # puts stdout

  # run multiple processes in parallel to completion
#  ssh.exec "sed ..."
#  ssh.exec "awk ..."
#  ssh.exec "rm -rf ..."
#  ssh.loop

  # open a new channel and configure a minimal set of callbacks, then run
  # the event loop until the channel finishes (closes)
#  channel = ssh.open_channel do |ch|
#    ch.exec "/usr/local/bin/ruby /path/to/file.rb" do |ch, success|
#      raise "could not execute command" unless success

      # "on_data" is called when the process writes something to stdout
#      ch.on_data do |c, data|
#        $STDOUT.print data
#      end
#
#      # "on_extended_data" is called when the process writes something to stderr
#      ch.on_extended_data do |c, type, data|
#        $STDERR.print data
#      end
#
#      ch.on_close { puts "done!" }
#    end
#  end
#
#  channel.wait

  # forward connections on local port 1234 to port 80 of www.capify.org
#  ssh.forward.local(1234, "www.capify.org", 80)
#  ssh.loop { true }
end
