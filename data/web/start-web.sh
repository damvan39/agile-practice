echo "called sucsessfully"
cp /data/monit-web.conf /etc/monitrc
if monit -t; then
    echo "config fine"
else
    exit 1
fi
monit -i
sleep 10
exit 0
