
##############################################################
#
# AESD-ASSIGNMENTS
# Reference: Buildroot user manual (Section 9.2.1)
# https://buildroot.org/downloads/manual/manual.html#outside-br-custom
#
##############################################################

USER_APP_VERSION = '0dcb8ac592a7a60f1c220a5494a5bad066481fa5'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
USER_APP_SITE = 'git@github.com:VenetiaFurtado/Multi_Sensor_Event_Driver.git'
USER_APP_SITE_METHOD = git
USER_APP_GIT_SUBMODULES = YES

define USER_APP_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/user-app all
endef

define USER_APP_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/user-app/user-app $(TARGET_DIR)/usr/bin/

endef

$(eval $(generic-package))
