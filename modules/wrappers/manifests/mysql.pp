class wrappers::mysql {
  class { 'mysql::server' : 
    root_password => "deeznuts",
  }

  class {'mysql::bindings':
    php_enable         => true,
    php_package_ensure => present,
    require            => Class['mysql::server'],
  }

  mysql::db { "wordpress":
    user     => 'wordpress',
    password => 'wordpress',
    host     => 'localhost',
    grant    => 'all',
    require  => Class['mysql::server'], 
  }

  include 'mysql::client'
}
