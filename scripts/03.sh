echo "Insert Username:"
read name
cat /etc/passwd | awk -F":" -v name="$name" '{
if ($1==name)
	{
		print $1,"|",$3,"|",$6
		flag=1
	}
}
END{
	if (flag==0)
		print "No account found."
}'
