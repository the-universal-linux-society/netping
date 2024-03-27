#! /bin/bash
read -p "Enter the server or website address to check: " HOST
read -p "Enter the email address to receive alerts: " EMAIL
ping -c 4 "$HOST" > /dev/null
if [ $? -ne 0 ]; then
	echo "Connection to $HOST is down" | mail -s "Network ALERT" "$EMAIL"
else
	echo "Connection to $HOST is up"
fi
