#!/bin/bash
cd /resource/php

# php编译
tar zxvf /resource/php/${1}
dit=${1//.tar.gz/}
cd /resource/php/${dit}

./configure  --prefix=/usr/local/php/${2} --with-config-file-path-/usr/local/php/${2}/etc --without-pear  --disable-phar  --enable-bcmath   --enable-zip --enable-fpm --with-fpm-user=ryanwu --with-fpm-group=ryanwu --enable-mbstring --enable-sockets --enable-opcache > /resource/php/info.log 
make  > /resource/php/info.log
make install > /resource/php/info.log 
echo PATH=/usr/local/php/${2}/bin:$PATH >> /root/.bashrc
