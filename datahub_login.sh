#!/bin/bash

user=$1
pass=$2
VAR=$(expect -c "
spawn datahub login

expect \"*?login:*\"
send -- \"$user\r\"
expect \"*?password:*\"
send -- \"$pass\r\"
send -- \"\r\"
expect eof
")

echo $VAR
echo "============"
