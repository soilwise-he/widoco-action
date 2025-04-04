FROM ghcr.io/dgarijo/widoco:v1.4.25

USER root

COPY entrypoint.sh /entrypoint.sh

RUN mkdir /tmp/gha
RUN chown -R widoco:widoco /usr/local/widoco

WORKDIR /tmp/gha

RUN ["chmod", "+x", "/entrypoint.sh"]

RUN chmod +x /entrypoint.sh

USER widoco

ENTRYPOINT ["/entrypoint.sh"]