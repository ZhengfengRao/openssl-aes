openssl-aes
===========

AES crypto library from openssl

this is aes crypto algorithm implemention ported from openssl-1.0.1e, i removed all un-related files to make the library lightweight.

*************************************************
changes:
*************************************************
(1)Nothing of the codes be changed excepted:'Makefile'
(2)Directory organization of some files changed.

 


*************************************************
how to use:
*************************************************
u can use it as a static library.
(1) complingq the library, quite simple!
[ra@scrcsl-server11 aes]$ make clean;make
rm -f src/*.o libcrypto.a
cc -I ./include -g -c -o src/aes_misc.o src/aes_misc.c
cc -I ./include -g -c -o src/aes_ecb.o src/aes_ecb.c
cc -I ./include -g -c -o src/aes_cfb.o src/aes_cfb.c
cc -I ./include -g -c -o src/aes_ofb.o src/aes_ofb.c
cc -I ./include -g -c -o src/aes_ctr.o src/aes_ctr.c
cc -I ./include -g -c -o src/aes_ige.o src/aes_ige.c
cc -I ./include -g -c -o src/aes_wrap.o src/aes_wrap.c
cc -I ./include -g -c -o src/aes_core.o src/aes_core.c
cc -I ./include -g -c -o src/aes_cbc.o src/aes_cbc.c
ar r libcrypto.a src/aes_misc.o src/aes_ecb.o src/aes_cfb.o src/aes_ofb.o src/aes_ctr.o src/aes_ige.o src/aes_wrap.o src/aes_core.o src/aes_cbc.o
ar: creating libcrypto.a

(2) add 'include' directory to your project

(3) make you program link to 'libcrypto.a'.
It will work!

(4) additionally, there is a sample:
[ra@scrcsl-server11 aes]$ make test
enjoy it!

 

*************************************************
license:
*************************************************
kepp openssl original license unchanged.

 

 

Zhengfeng Rao
2013-3-20
