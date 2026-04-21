
##############################################################
#
# AESD-ASSIGNMENTS
# Reference: Buildroot user manual (Section 9.2.1)
# https://buildroot.org/downloads/manual/manual.html#outside-br-custom
#
##############################################################

BME280_SENSOR_VERSION = '1b69efbb6ef2732c4638eb23f5b1d7828fcd5ada'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
BME280_SENSOR_SITE = 'git@github.com:VenetiaFurtado/Multi_Sensor_Event_Driver.git'
BME280_SENSOR_SITE_METHOD = git
BME280_SENSOR_GIT_SUBMODULES = YES

BME280_SENSOR_MODULE_SUBDIRS = bme280_sensor

$(eval $(kernel-module))
$(eval $(generic-package))
