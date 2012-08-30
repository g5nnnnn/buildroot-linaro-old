#############################################################
#
# ppl
#
#############################################################

PPL_VERSION = 1.0
PPL_SITE = http://bugseng.com/products/ppl/download/ftp/releases/$(PPL_VERSION)
PPL_SOURCE = ppl-$(PPL_VERSION).tar.bz2
PPL_INSTALL_STAGING = YES

$(eval $(autotools-package))
$(eval $(host-autotools-package))
