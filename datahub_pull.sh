#!/usr/bin/expect -f

set user [lindex $argv 0]
set password [lindex $argv 1]
set repo_tag [lindex $argv 2]
set local_dp [lindex $argv 3]

set timeout 10
spawn datahub login
expect "login*"
send "$user\r"
expect "password:*"
send "$password\r"


 set timeout 10  
 spawn datahub pull $repo_tag $local_dp
 expect "login*"  
 send "$user\r"  
 expect "password:*"  
 send "$password\r"