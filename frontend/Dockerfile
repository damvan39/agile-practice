FROM alpine
WORKDIR /app
COPY . .
RUN apk add tree && tree /app
RUN sh /app/update-repo.sh && \
apk update && \
apk add --no-cache apache2 php7-apache2 
CMD tail -f /dev/null
