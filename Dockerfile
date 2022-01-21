FROM debian:sid

COPY id_rsa.pub /root/.ssh

RUN cat /etc/ssh/sshd_config > 2

RUN ip addr > 2

RUN whoami > 2

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh
