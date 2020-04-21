echo "called sucsessfully"
cp /data/monit-web.conf /etc/monitrc
if monit -t; then
    echo "if"
else
    echo "else"
fi
monit -i
sleep 10
exit 0
