#! /bin/bash

wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm
rpm -ivh epel-release-7-8.noarch.rpm

yum install ansible

# failed with python-jinja2 dependency

wget ftp://rpmfind.net/linux/centos/7.2.1511/os/x86_64/Packages/python-jinja2-2.7.2-2.el7.noarch.rpm

# python-jinja2 depends on these, and rpm install doesn't handle dependencies
yum install python-babel
yum install python-markupsafe

rpm -Uvh python-jinja2-2.7.2-2.el7.noarch.rpm