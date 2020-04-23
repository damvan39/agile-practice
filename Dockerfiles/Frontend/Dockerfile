FROM alpine
WORKDIR /app
STOPSIGNAL SIGINT
COPY . .
RUN apk add --no-cache apache2 php7-apache2 monit dos2unix bash tini && \
cp monit-frontend.conf /etc/monitrc && \
chmod 700 /etc/monitrc && \
mkdir /var/run/monit/ && \
dos2unix /app/start-web.sh
ENTRYPOINT ["tini", "--","/app/start-web.sh"]
#CMD tail -f /dev/null
