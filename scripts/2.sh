echo "Which user would you remove?"
read username

check_exist=`cat /etc/passwd | grep $username`
if [ "$check_exist" != "$NULL" ]; then
	sudo passwd usermod --expiredate 1 $username
	sudo kill -9 -u $username
	sudo userdel -r $username
fi
