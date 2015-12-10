class wrappers::wordpress {
  user {'wordpress':
    ensure   => present,
    password => 'wordpress',
  }
  
  class {'wordpress':
    wp_owner       => 'wordpress',
    wp_group       => 'wordpress',
    db_user        => 'wordpress',
    db_password    => 'wordpress',
    create_db      => false,
    create_db_user => false,
    install_dir    => '/var/www/wordpress',
    require        => User['wordpress'],
  }
}
