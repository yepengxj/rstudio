#!/usr/bin/expect -f  

 set timeout 10  
 spawn datahub login
 expect "login*"  
 send $1"\r"  
 expect "password:*"  
 send $2"\r"  

datahub --daemon 
