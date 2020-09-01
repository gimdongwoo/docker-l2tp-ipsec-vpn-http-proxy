FROM debian:stretch

ENV LANG C.UTF-8

WORKDIR /app

RUN apt-get -yqq update \
    && DEBIAN_FRONTEND=noninteractive \
       apt-get -yqq --no-install-recommends install \
         wget dnsutils openssl ca-certificates kmod \
         iproute gawk grep sed net-tools iptables \
         bsdmainutils libcurl3-nss \
         strongswan rsyslog ppp libpcap0.8 privoxy

COPY app /app
RUN find /app -name run.sh | xargs chmod u+x
RUN dpkg --unpack /app/xl2tpd_1.3.11-1_amd64.deb && rm /var/lib/dpkg/info/xl2tpd.postinst && dpkg --configure xl2tpd

EXPOSE 8040

CMD ["/app/run.sh"]