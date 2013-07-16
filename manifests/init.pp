# == Class: asgard
#
# Module for installing Asgard in an existing tomcat instance.
#
# NOTICE: This module will 'rm -rf' the webapps directory of the configured
# tomcat instance, and it will also write a setenv.sh file to the configured
# tomcat bin directory.
#
# === Parameters
#
# [*version*]
#   Asgard version
#
# [*tomcat_dir*]
#   Tomcat installation directory (defaults to /opt/tomcat) 
#
# [*java_memory*]
#   Amount of memory to allocate for tomcat (defaults to 1024)
#
# === Examples
#
#  Install default version of asgard.war in /opt/tomcat with 1GB RAM:
#  
#  class { asgard: }
#
#  Install 1.1.2 version of asgard.war in /opt/tomcat with 2GB RAM:
#
#  class { asgard: 
#    version     => '1.1.2',
#    java_memory => 2048,
#  }
#
# === Authors
#
# Nicholas Whittier imperialwicket@gmail.com
#
# === Copyright
#
# Copyright 2013 Nicholas Whittier.
#
class asgard (
  $version = '1.2',
  $tomcat_dir = '/opt/tomcat',
  $java_memory = 1024,
) {
  anchor { "${module_name}::begin": } ->
  class {"${module_name}::install": } ->
  class {"${module_name}::config": } ~>
  anchor { "${module_name}::end": }
}
