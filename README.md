## Asgard

This is the asgard module, it installs the asgard.war file in an existing
Tomcat instance.

NOTICE: This module will 'rm -rf' the webapps directory of the configured
tomcat instance, and it will also write a setenv.sh file to the configured
tomcat bin directory.

### Usage

Install default version of asgard.war in /opt/tomcat with 1GB RAM:
  
    class { asgard: }

Install 1.1.2 version of asgard.war in /opt/tomcat with 2GB RAM:

    class { asgard: 
      version     => '1.1.2',
      java_memory => 2048,
    }


License
-------

[Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0.html)


Contact
-------

imperialwicket@gmail.com, @nw_iw
