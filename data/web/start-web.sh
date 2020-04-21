echo "called sucsessfully"
cp /data/web/monit-web.conf /etc/monitrc
monit -t
monit -i
