FROM alpine
WORKDIR /app
COPY . .
RUN apk add tree && tree /data
RUN sh update-repo.sh && \
apk update && \
apk add --no-cache apache2 php7-apache2 
CMD /bin/sh /data/start-web.sh
#CMD tail -f /dev/null
