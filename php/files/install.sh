#!/bin/bash
cd /resource/php

tar zxvf /resource/php/${1}
dit=${1//.tar.gz/}
cd /resource/php/${dit}

./configure  --prefix=/usr/local/php/${2} --with-config-file-path="/usr/local/php/${2}/etc/php.ini" --with-config-file-scan-dir="/usr/local/php/${2}/etc/php.d" --without-pear  --disable-phar  --enable-bcmath   --enable-zip --enable-fpm --with-fpm-user=ryanwu --with-fpm-group=ryanwu --enable-mbstring --enable-sockets --enable-opcache  
make 
make install 
echo PATH=/usr/local/php/${2}/bin:/usr/local/php/{2}/sbin:$PATH >> /root/.bashrc
