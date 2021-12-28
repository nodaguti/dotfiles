#!/bin/bash

# <xbar.title>Bandwidth Total</xbar.title>
# <xbar.version>v1.0.0</xbar.version>
# <xbar.author>Charl P. Botha</xbar.author>
# <xbar.author.github>cpbotha</xbar.author.github>
# <xbar.desc>Displays total TX and RX KBytes/s for all active interfaces. Lua = smaller than .sh.</xbar.desc>
# <xbar.dependencies>ifstat, lua</xbar.dependencies>
# <xbar.image>https://cpbotha.net/thingies/bitbar_bandwidth_total_lua.jpg</xbar.image>

# to find the network interface connected to default route you could use this:
# https://superuser.com/a/627581/130835

LUA_SCRIPT=`cat <<EOS
local file = io.popen('%HOMEBREW_PREFIX%/bin/ifstat -n -w -z -T 0.1 1')
local output = file:read('*all')

local lines = {}
for l in output:gmatch("[^\r\n]+") do
    table.insert(lines, l)
end

local speeds = {}
for speed in lines[3]:gmatch("%S+") do
    table.insert(speeds, speed)
end

local ifaces = {}
for iface in lines[1]:gmatch("%S+") do
    table.insert(ifaces, iface)
end

print(string.format("▼%.2f ▲%.2f", speeds[#speeds-1], speeds[#speeds]))
print("---")

for i = 1,#ifaces-1 do
    print(string.format("%s: ▼%s ▲%s", ifaces[i], speeds[i*2-1], speeds[i*2]))
end
EOS
`

if [ -d '/opt/homebrew' ]; then
  HOMEBREW_PREFIX='/opt/homebrew'
else
  HOMEBREW_PREFIX='/usr/local'
fi

echo $LUA_SCRIPT | sed -e "s!%HOMEBREW_PREFIX%!${HOMEBREW_PREFIX}!g" | ${HOMEBREW_PREFIX}/bin/lua -
