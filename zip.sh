#!/bin/sh 
# Copyright (C) 2016 evenS
. /etc/aria2gee/Aria2Gee.conf
echo -e "[\e[32m恢复配置文件为默认\e[37m]"
sed -i "s#$pwd#xxxxxx#g" /etc/aria2gee/aria2c.conf
mac=$(lua -e "print(require'tw'.get_mac())")
mac=${mac:6:8}
sed -i "s#$mac#FFFFFFFF#g" /etc/aria2gee/frp.ini

tar -czvf /tmp/data/aria2gee/aria2gee.tar.gz /tmp/cryptdata/usr/bin/base64 /tmp/cryptdata/usr/bin/aria2c /tmp/cryptdata/usr/bin/frpc /etc/aria2gee/aria2c.conf /etc/aria2gee/aria2c.conf.demo /etc/aria2gee/frp.ini /etc/init.d/aria2gee.sh

tar -czvf /tmp/data/aria2gee/archive.tgz -C /tmp/data/aria2gee/ manifest.json script aria2gee.tar.gz Aria2Gee.conf
echo -e "[\e[32m还原配置文件\e[37m]"
sed -i "s#xxxxxx#$pwd#g" /etc/aria2gee/aria2c.conf
mac=$(lua -e "print(require'tw'.get_mac())")
mac=${mac:6:8}
sed -i "s#FFFFFFFF#$mac#g" /etc/aria2gee/frp.ini