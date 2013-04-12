#############################################################
#
# isl
#
#############################################################

ISL_VERSION = 0.11.2
ISL_SITE = ftp://ftp.linux.student.kuleuven.be/pub/people/skimo/isl
ISL_SOURCE = isl-$(ISL_VERSION).tar.bz2
ISL_INSTALL_STAGING = YES

$(eval $(autotools-package))
$(eval $(host-autotools-package))
