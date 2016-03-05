#!/usr/bin/expect -f  

 set timeout 10  
 spawn datahub pull $3 $4
 expect "login*"  
 send $1"\r"  
 expect "password:*"  
 send $2"\r"  
 
