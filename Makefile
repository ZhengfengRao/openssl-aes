#
# Makefile
#

SRC_DIR = src
CC=	cc
CPP=	$(CC) -E
INCLUDES= -I ./include
CFLAG=-g
MAKEFILE=	Makefile
AR=		ar r

CFLAGS= $(INCLUDES) $(CFLAG)
ASFLAGS= $(INCLUDES) $(ASFLAG)
AFLAGS= $(ASFLAGS)

LIB=libcrypto.a
LIBSRC= $(SRC_DIR)/aes_core.c $(SRC_DIR)/aes_misc.c $(SRC_DIR)/aes_ecb.c $(SRC_DIR)/aes_cbc.c $(SRC_DIR)/aes_cfb.c $(SRC_DIR)/aes_ofb.c $(SRC_DIR)/aes_ctr.c $(SRC_DIR)/aes_ige.c $(SRC_DIR)/aes_wrap.c $(SRC_DIR)/cbc128.c $(SRC_DIR)/ctr128.c $(SRC_DIR)/cts128.c $(SRC_DIR)/cfb128.c $(SRC_DIR)/ofb128.c $(SRC_DIR)/gcm128.c $(SRC_DIR)/ccm128.c $(SRC_DIR)/xts128.c
LIBOBJ=$(SRC_DIR)/aes_misc.o $(SRC_DIR)/aes_ecb.o $(SRC_DIR)/aes_cfb.o $(SRC_DIR)/aes_ofb.o $(SRC_DIR)/aes_ctr.o $(SRC_DIR)/aes_ige.o $(SRC_DIR)/aes_wrap.o $(SRC_DIR)/aes_core.o $(SRC_DIR)/aes_cbc.o $(SRC_DIR)/cbc128.o $(SRC_DIR)/ctr128.o $(SRC_DIR)/cts128.o $(SRC_DIR)/cfb128.o $(SRC_DIR)/ofb128.o $(SRC_DIR)/gcm128.o $(SRC_DIR)/ccm128.o $(SRC_DIR)/xts128.o 

all:$(LIBOBJ)
	$(AR) $(LIB) $(LIBOBJ)

dclean:
	$(PERL) -pe 'if (/^# DO NOT DELETE THIS LINE/) {print; exit(0);}' $(MAKEFILE) >Makefile.new
	mv -f Makefile.new $(MAKEFILE)

clean:
	rm -f $(SRC_DIR)/*.o $(LIB) 

# DO NOT DELETE THIS LINE -- make depend depends on it.

$(SRC_DIR)/aes_cbc.o: include/aes.h include/modes.h
$(SRC_DIR)/aes_cbc.o: include/opensslconf.h $(SRC_DIR)/aes_cbc.c
$(SRC_DIR)/aes_cfb.o: include/aes.h include/modes.h
$(SRC_DIR)/aes_cfb.o: include/opensslconf.h $(SRC_DIR)/aes_cfb.c
$(SRC_DIR)/aes_core.o: include/aes.h include/e_os2.h
$(SRC_DIR)/aes_core.o: include/opensslconf.h $(SRC_DIR)/aes_core.c include/aes_locl.h
$(SRC_DIR)/aes_ctr.o: include/aes.h include/modes.h
$(SRC_DIR)/aes_ctr.o: include/opensslconf.h $(SRC_DIR)/aes_ctr.c
$(SRC_DIR)/aes_ecb.o: include/aes.h include/e_os2.h
$(SRC_DIR)/aes_ecb.o: include/opensslconf.h $(SRC_DIR)/aes_ecb.c include/aes_locl.h
$(SRC_DIR)/aes_ige.o: include/e_os.h include/aes.h include/bio.h
$(SRC_DIR)/aes_ige.o: include/buffer.h include/crypto.h
$(SRC_DIR)/aes_ige.o: include/e_os2.h include/err.h
$(SRC_DIR)/aes_ige.o: include/lhash.h include/opensslconf.h
$(SRC_DIR)/aes_ige.o: include/opensslv.h include/ossl_typ.h
$(SRC_DIR)/aes_ige.o: include/safestack.h include/stack.h
$(SRC_DIR)/aes_ige.o: include/symhacks.h include/cryptlib.h $(SRC_DIR)/aes_ige.c include/aes_locl.h
$(SRC_DIR)/aes_misc.o: include/aes.h include/crypto.h
$(SRC_DIR)/aes_misc.o: include/e_os2.h include/opensslconf.h
$(SRC_DIR)/aes_misc.o: include/opensslv.h include/ossl_typ.h
$(SRC_DIR)/aes_misc.o: include/safestack.h include/stack.h
$(SRC_DIR)/aes_misc.o: include/symhacks.h include/aes_locl.h $(SRC_DIR)/aes_misc.c
$(SRC_DIR)/aes_ofb.o: include/aes.h include/modes.h
$(SRC_DIR)/aes_ofb.o: include/opensslconf.h $(SRC_DIR)/aes_ofb.c
$(SRC_DIR)/aes_wrap.o: include/e_os.h include/aes.h
$(SRC_DIR)/aes_wrap.o: include/bio.h include/buffer.h
$(SRC_DIR)/aes_wrap.o: include/crypto.h include/e_os2.h
$(SRC_DIR)/aes_wrap.o: include/err.h include/lhash.h
$(SRC_DIR)/aes_wrap.o: include/opensslconf.h
$(SRC_DIR)/aes_wrap.o: include/opensslv.h include/ossl_typ.h
$(SRC_DIR)/aes_wrap.o: include/safestack.h include/stack.h
$(SRC_DIR)/aes_wrap.o: include/symhacks.h include/cryptlib.h $(SRC_DIR)/aes_wrap.c
$(SRC_DIR)/cbc128.o: include/crypto.h include/e_os2.h
$(SRC_DIR)/cbc128.o: include/modes.h include/opensslconf.h
$(SRC_DIR)/cbc128.o: include/opensslv.h include/ossl_typ.h
$(SRC_DIR)/cbc128.o: include/safestack.h include/stack.h
$(SRC_DIR)/cbc128.o: include/symhacks.h $(SRC_DIR)/cbc128.c include/modes_lcl.h
$(SRC_DIR)/ccm128.o: include/crypto.h include/e_os2.h
$(SRC_DIR)/ccm128.o: include/modes.h include/opensslconf.h
$(SRC_DIR)/ccm128.o: include/opensslv.h include/ossl_typ.h
$(SRC_DIR)/ccm128.o: include/safestack.h include/stack.h
$(SRC_DIR)/ccm128.o: include/symhacks.h $(SRC_DIR)/ccm128.c include/modes_lcl.h
$(SRC_DIR)/cfb128.o: include/crypto.h include/e_os2.h
$(SRC_DIR)/cfb128.o: include/modes.h include/opensslconf.h
$(SRC_DIR)/cfb128.o: include/opensslv.h include/ossl_typ.h
$(SRC_DIR)/cfb128.o: include/safestack.h include/stack.h
$(SRC_DIR)/cfb128.o: include/symhacks.h $(SRC_DIR)/cfb128.c include/modes_lcl.h
$(SRC_DIR)/ctr128.o: include/crypto.h include/e_os2.h
$(SRC_DIR)/ctr128.o: include/modes.h include/opensslconf.h
$(SRC_DIR)/ctr128.o: include/opensslv.h include/ossl_typ.h
$(SRC_DIR)/ctr128.o: include/safestack.h include/stack.h
$(SRC_DIR)/ctr128.o: include/symhacks.h $(SRC_DIR)/ctr128.c include/modes_lcl.h
$(SRC_DIR)/cts128.o: include/crypto.h include/e_os2.h
$(SRC_DIR)/cts128.o: include/modes.h include/opensslconf.h
$(SRC_DIR)/cts128.o: include/opensslv.h include/ossl_typ.h
$(SRC_DIR)/cts128.o: include/safestack.h include/stack.h
$(SRC_DIR)/cts128.o: include/symhacks.h $(SRC_DIR)/cts128.c include/modes_lcl.h
$(SRC_DIR)/gcm128.o: include/crypto.h include/e_os2.h
$(SRC_DIR)/gcm128.o: include/modes.h include/opensslconf.h
$(SRC_DIR)/gcm128.o: include/opensslv.h include/ossl_typ.h
$(SRC_DIR)/gcm128.o: include/safestack.h include/stack.h
$(SRC_DIR)/gcm128.o: include/symhacks.h $(SRC_DIR)/gcm128.c include/modes_lcl.h
$(SRC_DIR)/ofb128.o: include/crypto.h include/e_os2.h
$(SRC_DIR)/ofb128.o: include/modes.h include/opensslconf.h
$(SRC_DIR)/ofb128.o: include/opensslv.h include/ossl_typ.h
$(SRC_DIR)/ofb128.o: include/safestack.h include/stack.h
$(SRC_DIR)/ofb128.o: include/symhacks.h include/modes_lcl.h $(SRC_DIR)/ofb128.c
$(SRC_DIR)/xts128.o: include/crypto.h include/e_os2.h
$(SRC_DIR)/xts128.o: include/modes.h include/opensslconf.h
$(SRC_DIR)/xts128.o: include/opensslv.h include/ossl_typ.h
$(SRC_DIR)/xts128.o: include/safestack.h include/stack.h
$(SRC_DIR)/xts128.o: include/symhacks.h include/modes_lcl.h $(SRC_DIR)/xts128.c
