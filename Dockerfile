FROM palshife/ssh
ENV DEBIAN_FRONTEND noninteractive
RUN apt -y update && apt install -y gnucash ofx aqbanking-tools libdbd-mysql
RUN useradd -m -s /usr/bin/gnucash gnucash && echo 'gnucash:gnucash' | chpasswd
EXPOSE 22
ENTRYPOINT ["/usr/bin/svscan", "/etc/myservices/"]
