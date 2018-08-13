FROM amazonlinux:latest

ADD https://github.com/just-containers/s6-overlay/releases/download/v1.21.4.0/s6-overlay-amd64.tar.gz /tmp/

COPY \
    files/uploadscript.sh /opt/uploadscript.sh
    files/pure-ftpd.conf /etc/pure-ftpd

RUN \
    tar xzf /tmp/s6-overlay-amd64.tar.gz && \
    yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum install -y pure-ftpd && \
    chmod +x /opt/uploadscript.sh && \
    yum autoremove -y && \
    yum clean all

ENTRYPOINT ["/init"]
