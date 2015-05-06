#!/bin/bash


opts="--disable-floating-point --disable-speex-aec --disable-large-filter"

codecs="--disable-gsm-codec --disable-speex-codec --disable-l16-codec --disable-ilbc-codec --disable-g722-codec --disable-g7221-codec"

cd /root

rm -rf /root/trunk

svn checkout http://svn.pjsip.org/repos/pjproject/trunk

cd /root/trunk;./configure $opts $codecs &&make dep && make clean && make && make install

