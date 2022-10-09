FROM devopsedu/webapp

ADD website /var/www/html

RUN rm /var/www/html/index.html

CMD apachectl -D FOREGROUND

RUN curl -fsSLO https://get.docker/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
