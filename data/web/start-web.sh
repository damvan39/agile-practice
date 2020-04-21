echo "called sucsessfully"
cp /data/monit-web.conf /etc/monitrc
if $Test = True
    monit -t
    sleep 3
    exit 0
fi
monit -i
exit 0
