FROM lampe/minimal-nginx:latest-busybox

# Override the existing default vhost.
COPY vhost.conf /etc/nginx/sites-enabled/default

ENV ROOT /webs/happybutterflybowties.com

RUN mkdir -p $ROOT
ADD . $ROOT
