
##############################################################
#
# ldd3
# References:
# https://buildroot.org/downloads/manual/manual.html#rootfs-custom
# https://buildroot.org/downloads/manual/manual.html#_infrastructure_for_packages_building_kernel_modules
# https://github.com/cu-ecen-aeld/ldd3 (README)
# https://chatgpt.com/share/69a3a423-fbb0-8001-85ef-324308f2ad54
##############################################################

LDD_VERSION = 'db98b7b3dd9ab82b9258b3792a76e00ae94c08bb'
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-VenetiaFurtado.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules scull

define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
