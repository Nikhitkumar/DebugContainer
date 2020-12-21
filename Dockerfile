FROM alpine
RUN apk update && \
    apk add --no-cache \
    bind-tools iputils tcpdump curl nmap tcpflow iftop net-tools mtr netcat-openbsd bridge-utils iperf ngrep \
    ca-certificates openssl \
    htop atop strace iotop sysstat ltrace ncdu logrotate hdparm pciutils psmisc tree pv 
ENTRYPOINT /bin/sh
