#!/bin/bash
dit=${3//.tar.gz/}
module_path=${4//.tar.gz/}
if [[ "${2}" == "ext" ]]; then
  cd /resource/php/${dit}/ext/${module_path}
else
    cd /resource/php/extensions
    tar -zxvf ./$4
    cd ./$module_path
fi

/usr/local/php/${1}/bin/phpize
./configure
make
make install
