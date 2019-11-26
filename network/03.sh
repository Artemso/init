ifconfig en1 | grep 'ether' | awk -F "ether " '{print $2}'

# open wireless
# get line with mac addr
# remove extra part
