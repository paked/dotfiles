#!/usr/bin/env ruby

STATUS_CONNECTED = 'connected'
STATUS_CONNECTING = 'connecting'
STATUS_DISCONNECTED = 'disconnected'

ICON_STATUS_CONNECTED = ' '
ICON_STATUS_CONNECTING = ' '
ICON_STATUS_DISCONNECTED = ''

require './.blocks/lib/color'

device = ENV['BLOCK_INSTANCE']

network_status = `nmcli --terse --fields device,state dev status`

def state?(device, state)
  /#{device}:#{state}\n/
end

def network_name(device)
  out = `nmcli --terse --fields NAME,DEVICE connection show --active`.strip

  m = out.match(/(.*)\:#{device}/)
  return "Unknown" unless m

  m[1]
end

case network_status
when state?(device, STATUS_CONNECTED)
  strength = `grep "#{device}" /proc/net/wireless | awk '{ print int($3) * 100/70 }'`.strip.to_i

  out = "#{ICON_STATUS_CONNECTED} #{network_name(device)} (#{strength}%)"

  if strength > 70
    puts Color.good(out)
  elsif strength < 40
    puts Color.bad(out)
  else
    puts out
  end
when state?(device, STATUS_CONNECTING)
  puts "#{ICON_STATUS_CONNECTING} Searching..."
when state?(device, STATUS_DISCONNECTED)
  puts Color.bad("#{ICON_STATUS_DISCONNECTED} Down.")
else
  puts Color.bad("IDK || #{/#{device}:(.*)\n/.match(network_status)[1]}")
end
