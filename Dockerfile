FROM ubuntu:22.04

RUN apt-get update ;\
    apt-get install -y mbpfan ;\
    apt-get -qqy autoremove --purge > /dev/null ;\
    apt-get -qqy clean autoclean > /dev/null ;\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/log/*

ENTRYPOINT ["mbpfan", "-f", "-v"]
