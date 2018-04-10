FROM centos:7  

RUN yum -y update; yum clean all; \
    yum -y install openssh-server passwd; yum clean all

ADD ./start.sh /usr/local/bin/
RUN mkdir /var/run/sshd
RUN chmod 755 /usr/local/bin/start.sh

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 
RUN /usr/local/bin/start.sh

ENTRYPOINT ["/usr/sbin/sshd", "-D"]
