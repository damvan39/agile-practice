echo "called sucsessfully"
cp /data/monit-web.conf /etc/monitrc
monit -t
monit -i
