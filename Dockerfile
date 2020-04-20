FROM alpine
WORKDIR /app
RUN apk add --no-cache apache2 php libapache2-mod-php
COPY . .
CMD tail -f /dev/null
