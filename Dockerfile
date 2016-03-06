FROM palshife/ssh
RUN apt-get install -y gnucash ofx aqbanking-tools libdbd-mysql
EXPOSE 22
ENTRYPOINT ["/usr/bin/svscan", "/etc/myservices/"]
