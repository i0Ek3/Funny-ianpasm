# Please remember forever you never write a shell in Dockerfile, you should considerate how to construct every level in it.
# Just add necessary rather you need, please make sure that unrelated things cleared.


# FROM nginx
# RUN echo '<h1>Hello, Docker!</h1>' > /usr/share/nginx/html/index.html

FROM ubuntu:18.04

RUN buildDeps='gcc libc6-dev make' \
              && apt update \
              && apt install -y $buildDeps \
              && apt wget -O redis.tar.gz "http://download.redis.io/redis-stable.tar.gz" \
              && mkdir -p /usr/src/redis \
              && tar -xzf redis.tar.gz -C /usr/src/redis --strip-componens=1 \
              && make -C /usr/src/redis \
              && make -C /usr/src/redis install \
              && rm -rf /var/lib/apt/lists/* \
              && rm redis.tar.gz \
              && rm -r /usr/src/redis \
              && apt purge -y --auto-remove &buildDeps 
