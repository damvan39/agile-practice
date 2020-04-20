FROM alpine3.11.5
WORKDIR /app
RUN cat > /etc/apk/repositories << EOF \
http://dl-cdn.alpinelinux.org/alpine/v$(cat /etc/alpine-release | cut -d'.' -f1,2)/main \
http://dl-cdn.alpinelinux.org/alpine/v$(cat /etc/alpine-release | cut -d'.' -f1,2)/community \
EOF && \
export phpverx=$(alpinever=$(cat /etc/alpine-release|cut -d '.' -f1);[ $alpinever -ge 9 ] && echo  7|| echo 5) && \
apk update && \
apk add --no-cache apache2 php$phpverx-apache2 
COPY . .
CMD tail -f /dev/null
