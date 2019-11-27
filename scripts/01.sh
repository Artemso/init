echo -e "NAME | UID | PATH"
cat /etc/passwd | sed '/^#/ d' | awk -F : '{print $1,"|", $3,"|",$6}' | column -t
