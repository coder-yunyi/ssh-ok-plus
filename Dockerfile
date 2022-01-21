FROM debian:sid

COPY id_rsa.pub /root/.ssh

RUN cat /root/.ssh/ssh_config

RUN ip addr

RUN whoami

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh
