#############################################################
#
# cloog
#
#############################################################

CLOOG_VERSION = 0.16.3
ifeq ($(findstring x4.7.,x$(GCC_VERSION)),x4.7.)
CLOOG_VERSION = 0.17.0
endif
CLOOG_SITE = http://www.bastoul.net/cloog/pages/download
CLOOG_SOURCE = cloog-$(CLOOG_VERSION).tar.gz
CLOOG_INSTALL_STAGING = YES
CLOOG_DEPENDENCIES = gmp

$(eval $(autotools-package))
$(eval $(host-autotools-package))
