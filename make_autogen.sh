#!/bin/bash
cd ${1}
./autogen.sh
./configure --disable-static --enable-shared
make -j4
cd ${2}
