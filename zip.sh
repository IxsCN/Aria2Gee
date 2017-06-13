#!/bin/sh 
# Copyright (C) 2016 evenS
. /etc/aria2gee/Aria2Gee.conf
echo -e "[\e[32m恢复配置文件为默认\e[37m]"
sed -i "s#$pwd#xxxxxx#g" /etc/aria2gee/aria2c.conf
sed -i "s#$path#/tmp/data/AriaDowbload/#g" /etc/aria2gee/aria2c.conf
mac=$(lua -e "print(require'tw'.get_mac())")
mac=${mac:6:8}
sed -i "s#$mac#FFFFFFFF#g" /etc/aria2gee/frp.ini

<<<<<<< HEAD
tar -czvf /tmp/data/aria2gee/aria2gee.tar.gz /tmp/cryptdata/usr/bin/base64 /tmp/cryptdata/usr/bin/aria2gee.cron /tmp/cryptdata/usr/bin/aria2c /tmp/cryptdata/usr/bin/frpc /etc/aria2gee/aria2c.conf /etc/aria2gee/aria2c.conf.demo /etc/aria2gee/frp.ini /etc/init.d/aria2gee.sh /usr/lib/libxml2.so.2 /usr/lib/libxml2.so.2.9.2 /usr/lib/libstdc++.so.6 /usr/lib/libstdc++.so.6.0.19 /usr/lib/libstdc++.so.6.0.19-gdb.py /etc/aria2gee/hook.sh
=======
tar -czvf /tmp/data/aria2gee/aria2gee.tar.gz /tmp/cryptdata/usr/bin/base64 /tmp/cryptdata/usr/bin/aria2gee.monitor /tmp/cryptdata/usr/bin/aria2c /tmp/cryptdata/usr/bin/frpc /etc/aria2gee/aria2c.conf /etc/aria2gee/aria2c.conf.demo /etc/aria2gee/frp.ini /etc/init.d/aria2gee.sh /usr/lib/libxml2.so.2 /usr/lib/libxml2.so.2.9.2 /usr/lib/libstdc++.so.6 /usr/lib/libstdc++.so.6.0.19 /usr/lib/libstdc++.so.6.0.19-gdb.py /etc/aria2gee/hook.sh
>>>>>>> origin/master

tar -czvf /tmp/data/aria2gee/archive.tgz -C /tmp/data/aria2gee/ manifest.json script aria2gee.tar.gz Aria2Gee.conf
echo -e "[\e[32m还原配置文件\e[37m]"
sed -i "s#xxxxxx#$pwd#g" /etc/aria2gee/aria2c.conf
sed -i "s#/tmp/data/AriaDowbload/#$path#g" /etc/aria2gee/aria2c.conf
mac=$(lua -e "print(require'tw'.get_mac())")
mac=${mac:6:8}
sed -i "s#FFFFFFFF#$mac#g" /etc/aria2gee/frp.ini