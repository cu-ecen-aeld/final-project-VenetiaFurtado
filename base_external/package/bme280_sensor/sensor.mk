
##############################################################
#
# AESD-ASSIGNMENTS
# Reference: Buildroot user manual (Section 9.2.1)
# https://buildroot.org/downloads/manual/manual.html#outside-br-custom
#
##############################################################

BME280_SENSOR_VERSION = '10441a83e55e3115036a6bf9bcffb0dcc750f686'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
BME280_SENSOR_SITE = 'git@github.com:VenetiaFurtado/Multi_Sensor_Event_Driver.git'
BME280_SENSOR_SITE_METHOD = git
BME280_SENSOR_GIT_SUBMODULES = YES

BME280_SENSOR_MODULE_SUBDIRS = bme280_sensor

define BME280_SENSOR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/bme280_sensor/bme280_sensor_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/bme280_sensor/bme280_sensor_unload $(TARGET_DIR)/usr/bin/

endef

$(eval $(kernel-module))
$(eval $(generic-package))
