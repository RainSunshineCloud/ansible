#!/bin/bash
cd /resource/nginx

# php编译
tar zxvf ./${1}
dit=${1//.tar.gz/}
cd /resource/nginx/${dit}
./configure --prefix=/usr/local/nginx --sbin-path=/usr/bin/nginx --error-log-path=/var/log/nginx/error.log --pid-path=/usr/local/nginx/nginx.pid --lock-path=/usr/local/nginx/nginx.lock --user=nginx --group=nginx --with-http_realip_module --with-http_v2_module --with-http_stub_status_module --with-http_ssl_module 
make 
make install
