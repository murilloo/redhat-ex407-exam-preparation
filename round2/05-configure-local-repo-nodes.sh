#!/bin/bash

# Configure yum repo to the nodes using HTTP
#ansible node1.example.com -m yum_repository -a "name=rhel description=rhel state=present gpgcheck=0 enabled=1 baseurl=http://control.example.com" 
#ansible node2.example.com -m yum_repository -a "name=rhel description=rhel state=present gpgcheck=0 enabled=1 baseurl=http://control.example.com" 

# Configure yum repo to the nodes using FTP
ansible node1.example.com -m yum_repository -a "name=rhel description=rhel state=present gpgcheck=0 enabled=1 baseurl=ftp://control.example.com" 
ansible node2.example.com -m yum_repository -a "name=rhel description=rhel state=present gpgcheck=0 enabled=1 baseurl=ftp://control.example.com"  

