class nginx (
  $package = $nginx::params::package,
  $confdir = $nginx::params::confdir,
  $blockdir = $nginx::params::blockdir,
  $logdir = $nginx::params::logdir,
  $nginx_ver = $nginx::params::nginx_ver,
  $docroot,
) inherits nginx::params {
  

  File {
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0664'
  }

  package { $package:
    ensure => $nginx_ver,
  }

  file { "${docroot}/vhosts":
    ensure   => directory,
    mode     => '0755',
    require => Exec["mkdir -p ${docroot}"],
  }

  nginx::vhost { 'default':
    docroot    => $docroot,
    servername => $::fqdn,
  }

  service { 'nginx':
    ensure    => running,
    enable    => true,
    require   => Package[$package],
  }
}

