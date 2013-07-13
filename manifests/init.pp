# == Class: asgard
#
# Full description of class asgard here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Examples
#
#  class { asgard:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ]
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2013 Your name here, unless otherwise noted.
#
class asgard (
  version = '1.2',
  tomcat_dir = '/opt/tomcat',
) {
  anchor { "${module_name}::begin": } ->
  class {"${module_name}::install": } ->
  class {"${module_name}::config": } ~>
  class {"${module_name}::service": } ~>
  anchor { "${module_name}::end": }
}
