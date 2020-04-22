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
echo $nfirst
if [ $NFIRST ] ; then
    echo "Detected not first run"
    tail -f /dev/null

    else 
    echo "first run"
    cp monit-frontend.conf /etc/monitrc
    chmod 700 /etc/monitrc
    mkdir /var/run/monit/
    echo "starting" 
    monit start all
    fi
NFIRST="True"
export NFIRST

while true
do
    echo "entered loop"
    monit -I
    monit stop all
done

