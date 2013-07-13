# == Class asgard::config
# This class is meant to be called from asgard
# it bakes the configuration file
# === Parameters
#
#
# === Example
#
class asgard::config() {
  include asgard::params
  file { "${asgard::tomcat_dir}/conf/server.xml":
    ensure  => file,
    mode    => '0644',
    content => template('asgard/server.xml.erb'),
  }
  file { "${asgard::tomcat_dir}/bin/setenv.sh":
    ensure  => file,
    mode    => '0755',
    content => template('asgard/setenv.sh.erb'),
  }
}

