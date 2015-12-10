class wrappers::apache {
  class { 'apache':
    docroot => '/var/www',
  }

  host { 'wordpress.puppetlabs.vm':
    ip => '127.0.0.1',
  }

  class { 'apache::mod::php':}

  apache::vhost {'wordpress.puppetlabs.vm':
    docroot => '/var/www/wordpress',
    port    => '8080',
  }
}
