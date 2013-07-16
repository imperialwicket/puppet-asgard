# == Class asgard::intall
# This class is meant to be called from asgard
# It install requires packages
class asgard::install {
  include asgard::params

  exec{
    'rm -rf *':
      cwd  => "$asgard::tomcat_dir}/webapps",
      path => [ '/bin', '/usr/bin' ];
    'wget asgard':
      command  => "wget https://github.com/Netflix/asgard/releases/download/asgard-${asgard::version}/asgard.war",
      cwd      => "$asgard::tomcat_dir}/webapps",
      path     => [ '/bin', '/usr/bin' ],
      require  => Exec['rm -rf *'];
  }
    
}
