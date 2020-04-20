FROM alpine
WORKDIR /app
COPY . .
RUN sh /app/misc/update-repo.sh && \
export phpverx=$(alpinever=$(cat /etc/alpine-release|cut -d '.' -f1);[ $alpinever -ge 9 ] && echo  7|| echo 5) && \
apk update && \
apk add --no-cache apache2 php$phpverx-apache2 
CMD tail -f /dev/null
