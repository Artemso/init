IP=$(ifconfig -L en0 | grep "inet " | cut -d " " -f 2)

host ${IP}
