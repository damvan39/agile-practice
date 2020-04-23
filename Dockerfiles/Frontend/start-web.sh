#!/bin/sh
echo "called sucsessfully"
if [ $CI ] ; then
    echo "***************************TEST MODE***************************"
    cp monit-frontend.conf /etc/monitrc
    chmod 700 /etc/monitrc
    mkdir /var/run/monit/
    monit start all
    sleep 3
    wget localhost:80
    if [ $? -eq 0 ]
    then
        echo "SUCCESS"
        rm index.html
    else
        echo "unable to reach port 80 FALILED"
        exit 1
    fi 
    exit 0
fi
trap 'echo "stopping" && monit stop all && echo success && exit 0' 2 15 

echo 'starting monit'
monit
monit start all
while :
do
    echo 'sleeping'
    sleep 10 &
    wait $!
    monit
    monit start all
done
exit 1