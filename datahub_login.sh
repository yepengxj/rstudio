#!/bin/bash

datahub --daemon
user=$1
echo "user:"$user
pass=$2
echo "pass:"$pass
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
