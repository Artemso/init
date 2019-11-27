echo "Insert Username:"
read NAME
flag=0
w | awk -v name="$NAME" '{
if ($1==name)
		flag=1
}
END{
	if (flag==1)
	{
		system("sudo killall -u "name"")
		system("sudo userdel "name"")
		print "User "name" has been successfully deleted."
	}
	else
		print "User "name" is inactive or doesn'\''t exist."
}'
