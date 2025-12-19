FROM fedora:latest

RUN dnf install -y lighttpd && dnf clean all

COPY index.html /var/www/lighttpd/

EXPOSE 80

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
