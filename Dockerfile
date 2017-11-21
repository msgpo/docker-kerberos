# Dockerfile for basic kerberos/ssh environment
FROM scientificlinux/sl:latest
MAINTAINER SL Team (SCIENTIFIC-LINUX-DEVEL@FNAL.GOV)

RUN yum -y install krb5-workstation openssh-clients
RUN sed -i -e 's/default_ccache_name = KEYRING:persistent:%{uid}/dns_lookup_kdc = true/' /etc/krb5.conf
RUN rm -rf /var/cache/yum/*

CMD ["/bin/bash"]

