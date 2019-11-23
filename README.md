## NetDevOps
#### 2019-11-22 claudia@indigowire.net

## UbuntuDisco Dingo Ansible Ansible 2.9 "Immigrant Song" Dockerfile
 - [Latest Ubuntu 19.04 (Disco Dingo)](https://wiki.ubuntu.com/DiscoDingo/ReleaseNotes)
 
 	[Ubuntu Releases](https://wiki.ubuntu.com/Releases)
 	
 	[Ansible Ubuntu Releases](https://launchpad.net/~ansible/+archive/ubuntu/ansible)
 - Python 2.7, Python 3.6, Ansible 2.9, Nornir 2.0
 - [Ansible 2.9.1 "Immigrant Song" Release Notes](https://github.com/ansible/ansible/blob/stable-2.9/changelogs/CHANGELOG-v2.9.rst)
  

![Docker Icon](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWmA-f2WW29z9uI8XXgshto0EjIOUqWwrRPBnpkaeQbOpFZRuW)

[cldeluna/disco-immigrant image](https://hub.docker.com/r/cldeluna/disco-immigrant) 
  
------



Purpose built ansible image starting with Ubuntu:18.10 Cosmic Cuttlefish base and including:
- Python 2.7 (Legacy)
- Python 3.7
- ansible 2.9.1
- git
- tree
- nano
- wget
- vim
- traceroute
- iputils-ping
- snmp
- snmp-mibs-downloader
- yaml
- jinja2
- httplib



Python Modules:
- requests
- nornir
- textfms
- openpyxl
- ciscoconfparse
- netmiko
- pandas
- PyYAML
- pyang
- pysnmp
- ncclient
- argparse 
- xlrd

Repositories:
- https://github.com/cldeluna/ansible2_4_base.git
- https://github.com/cldeluna/cisco_aci.git
- https://github.com/cldeluna/cisco_ios.git


## Build

```
Claudias-iMac:disco-immigrant claudia$ tree
.
├── AboutDocker.png
├── About_iMac.png
├── Dockerfile
└── README.md

0 directories, 4 files
```

```
Claudias-iMac:disco-immigrant claudia$ docker build -t cldeluna/disco-immigrant .
```

## Run

Run interactively

```
Claudias-iMac:disco-immigrant claudia$ docker run -it cldeluna/disco-immigrant
```


Run interactively and map a local directory /Users/claudia/Documents/docker_volume to the /ansible directory in the container.
```
Claudias-iMac:disco-immigrant claudia$ docker run -v  /Users/claudia/Documents/docker_volume:/ansible -it cldeluna/disco-immigrant
```

Check versions and modules in container 

```bash
Claudias-iMac:disco-immigrant claudia$
Claudias-iMac:disco-immigrant claudia$ docker run -it cldeluna/disco-immigrant
root@6e13a7094f5a:/ansible_local#
root@6e13a7094f5a:/ansible_local# python --version
Python 2.7.16
root@6e13a7094f5a:/ansible_local# python3 --version
Python 3.7.3
root@6e13a7094f5a:/ansible_local# ansible --version
ansible 2.9.1
  config file = /etc/ansible/ansible.cfg
  configured module search path = [u'/root/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python2.7/dist-packages/ansible
  executable location = /usr/bin/ansible
  python version = 2.7.16 (default, Oct  7 2019, 17:36:04) [GCC 8.3.0]
root@6e13a7094f5a:/ansible_local# pip freeze
asn1crypto==0.24.0
bcrypt==3.1.7
certifi==2019.9.11
cffi==1.13.2
chardet==3.0.4
ciscoconfparse==1.4.9
colorama==0.4.1
cryptography==2.8
distro-info===0.21ubuntu2
dnspython==1.16.0
entrypoints==0.3
et-xmlfile==1.0.1
future==0.18.2
httplib2==0.11.3
idna==2.6
jdcal==1.4.1
Jinja2==2.10
junos-eznc==2.3.0
keyring==17.1.1
keyrings.alt==3.1.1
lxml==4.4.1
MarkupSafe==1.1.0
mypy-extensions==0.4.3
napalm==2.5.0
ncclient==0.6.6
netaddr==0.7.19
netmiko==2.4.2
nornir==2.3.0
numpy==1.17.4
nxapi-plumbing==0.5.2
openpyxl==3.0.1
pandas==0.25.3
paramiko==2.6.0
passlib==1.7.2
ply==3.11
pyang==2.1
pyasn1==0.4.8
pycparser==2.19
pycrypto==2.6.1
pycryptodomex==3.9.4
pydantic==0.18.2
pyeapi==0.8.2
PyGObject==3.32.0
pyIOSXR==0.53
PyNaCl==1.3.0
pyparsing==2.4.5
pyserial==3.4
pysmi==0.3.4
pysnmp==4.4.12
python-apt==1.8.4
python-dateutil==2.8.1
pytz==2019.3
pyxdg==0.25
PyYAML==3.13
requests==2.22.0
ruamel.yaml==0.15.100
scp==0.13.2
SecretStorage==2.3.1
six==1.12.0
textfsm==1.1.0
transitions==0.7.1
typing-extensions==3.7.4.1
unattended-upgrades==0.1
urllib3==1.25.7
xlrd==1.2.0
yamlordereddictloader==0.4.0
root@6e13a7094f5a:/ansible_local# ping 8.8.8.8
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=37 time=10.0 ms
64 bytes from 8.8.8.8: icmp_seq=2 ttl=37 time=9.73 ms
64 bytes from 8.8.8.8: icmp_seq=3 ttl=37 time=9.23 ms
^C
--- 8.8.8.8 ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 12ms
rtt min/avg/max/mdev = 9.230/9.665/10.042/0.352 ms
root@6e13a7094f5a:/ansible_local# exit
exit
Claudias-iMac:disco-immigrant claudia$
```

## Docker Hub

[Download Docker Image *disco-immigrant* from Docker Hub](https://hub.docker.com/r/cldeluna/disco-immigrant ) and get started with Ansible and python!


Commands to build container and upload to Docker Hub.
```
Claudias-iMac:disco-immigrant claudia$ docker login
Claudias-iMac:disco-immigrant claudia$ docker tag cldeluna/disco-immigrant:latest cldeluna/disco-immigrant:latest
Claudias-iMac:disco-immigrant claudia$ docker push cldeluna/disco-immigrant
```

## Environment

![About Docker](AboutDocker.png)

![About Docker](About_iMac.png)

