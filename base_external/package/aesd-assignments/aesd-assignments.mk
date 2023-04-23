
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = f4892858de4a593c69e43cc4be64452d66821668
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-aeld/final-project-ajaykandagal.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

# TODO add your aesdsocket application build steps below
#$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/lib/libtcpipc all
#$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/app/ping-pong all
define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/app/ping-pong all
endef

# TODO add your aesdsocket application and startup script installation steps below
#$(INSTALL) -m 0755 $(@D)/lib/libtcpipc/libtcpipc.so  $(TARGET_DIR)/usr/lib
#$(INSTALL) -m 0755 $(@D)/app/ping-pong/pingpong $(TARGET_DIR)/usr/bin
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/app/ping-pong/pingpong $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
