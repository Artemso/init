ifconfig en0

IP=$(ifconfig en0 | grep "inet " | cut -d " " -f 2)
BROADCAST=$(ifconfig en0 | grep "inet " | cut -d " " -f 6)

echo "ip: ${IP}"
echo "broadcast: ${BROADCAST}"

