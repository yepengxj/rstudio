#!/usr/bin/expect -f
datahub --daemon

set user [lindex $argv 0]
set password [lindex $argv 1]

set timeout 10
spawn datahub login
expect "login*"
send "$user\r"
expect "password:*"
send "$password\r"


