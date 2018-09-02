# Building on top of Ubuntu 14.04. The best distro around.
FROM nginx
ARG TEST1
ENV TEST1=$TEST1
COPY static-html-directory /usr/share/nginx/html
RUN set -x && echo $TEST1 >> /usr/share/nginx/html/index.html

EXPOSE 80
