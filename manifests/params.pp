# == Class asgard::params
# This class is meant to be called from asgard
# It set variable according to platform
class asgard::params {
  # Not currently implemented, might add service in the future...
  $conffile = 'asgard/etc/asgard.conf'
  $service = $::osfamily ? {
    'Debian' => 'asgard',
    'RedHat' => 'asgard',
    default  => fail('unsupported platform')
  }
}
