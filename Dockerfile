# Latest Ubuntu LTS 19 Disco dingo
# Ubuntu 19.04  #Disco Dingo
# https://wiki.ubuntu.com/Releases
# Python 3.6, Ansible 2.9.1, Nornir 2.0
# Ansible 2.9.1 "Immigrant Song"
# https://launchpad.net/~ansible/+archive/ubuntu/ansible
# https://github.com/ansible/ansible/blob/stable-2.9/changelogs/CHANGELOG-v2.9.rst#id1
# cat /etc/issue
# apt-cache show ansible
# Disco Immigrant

FROM ubuntu:19.04

LABEL maintainer="Claudia de Luna <claudia@indigowire.net>"
MAINTAINER Claudia de Luna "<claudia@indigowire.net>"

#USER docker

RUN apt-get -y update
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y apt-utils

RUN apt-get install -y python-yaml python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools python-pkg-resources git python-pip

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get install -y build-essential libssl-dev libffi-dev python3-dev && \
    apt-get install -y python3-pip python3-venv python3-setuptools && \
    apt-get install -y python3-yaml python3-jinja2 python3-httplib2

RUN apt-get install -yq software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update -q && \
    apt-get install -yq ansible=2.9.1-1ppa~disco*

RUN apt-get install -y git
RUN apt-get install -y tree
RUN apt-get install -y nano
RUN apt-get install -y wget
RUN apt-get install -y vim
RUN apt-get install -y traceroute
RUN apt-get install -y iputils-ping
RUN apt-get install -y snmp
RUN apt-get install -y snmp-mibs-downloader

RUN apt-get -y update
RUN apt-get install -y pandoc
RUN apt-get install -y texlive
RUN pip install --upgrade pip
RUN pip3 install --upgrade pip


RUN pip3 install argparse && \
        pip3 install requests && \
        pip3 install nornir && \
        pip3 install textfsm && \
        pip3 install openpyxl && \
        pip3 install ciscoconfparse && \
        pip3 install netmiko && \
        pip3 install pandas && \
        pip3 install PyYAML && \
        pip3 install pyang && \
        pip3 install pysnmp && \
        pip3 install ncclient && \
        pip3 install argparse && \
        pip3 install xlrd

# cleanup

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get -qy autoremove

VOLUME /ansible

WORKDIR /ansible_local
RUN git clone https://github.com/cldeluna/ansible2_4_base.git
RUN git clone https://github.com/cldeluna/cisco_aci.git
RUN git clone https://github.com/cldeluna/cisco_ios.git

RUN git config --global user.name "Disco Immigrant"
RUN git config --global user.email "disco@immigrant.com"



