FROM rockylinux:9.1.20221221
RUN dnf install -y openssh-server
RUN ssh-keygen -A
RUN sed -i 's/.*PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config
RUN echo "root:root" | chpasswd
ADD ./change-root-pwd.sh /
ADD ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
RUN chmod +x /change-root-pwd.sh
EXPOSE 22/tcp
ENV ROOT_PASSWORD=
CMD []
ENTRYPOINT ["/docker-entrypoint.sh"]

