echo "called sucsessfully"
cp /data/monit-web.conf /etc/monitrc
if monit -t; then
    exit 1
fi
monit -i
sleep 10
exit 0
