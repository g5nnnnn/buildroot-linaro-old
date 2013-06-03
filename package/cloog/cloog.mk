#############################################################
#
# cloog
#
#############################################################

CLOOG_VERSION = 0.16.3
CLOOG_DEPENDENCIES = gmp ppl
ifeq ($(findstring x4.7.,x$(GCC_VERSION)),x4.7.)
CLOOG_VERSION = 0.17.0
endif
ifeq ($(findstring x4.8.,x$(GCC_VERSION)),x4.8.)
CLOOG_VERSION = 0.18.0
CLOOG_DEPENDENCIES = gmp isl
endif
CLOOG_SITE = http://www.bastoul.net/cloog/pages/download
CLOOG_SOURCE = cloog-$(CLOOG_VERSION).tar.gz
CLOOG_INSTALL_STAGING = YES

$(eval $(autotools-package))
$(eval $(host-autotools-package))
