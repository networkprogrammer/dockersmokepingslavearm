FROM armv7/armhf-ubuntu:16.04
RUN ln -fs /usr/share/zoneinfo/US/Pacific-New /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
RUN apt-get -qq update
RUN apt-get -yqq install --no-install-recommends smokeping
RUN apt-get -yqq install dnsutils tcptraceroute echoping
COPY tcpping /usr/local/bin/tcpping
RUN chmod +x /usr/local/bin/tcpping
COPY slavesecrets.conf /etc/smokeping/slavesecrets.conf
RUN chmod 700 /etc/smokeping/slavesecrets.conf
RUN touch /var/log/syslog
COPY script.sh /root/script.sh
RUN chmod +x /root/script.sh
CMD /root/script.sh

