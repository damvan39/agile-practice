echo "called sucsessfully"
cp monit-web.conf /etc/monitrc
chmod 700 /etc/monitrc
mkdir /var/run/monit/
echo $CI
if [ $CI ] ; then
    echo "test mode"
    monit -t
    sleep 3
    exit 0
fi
monit -I
exit 0
