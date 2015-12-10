class nginx::params {
  $package = 'nginx'
  $confdir = '/etc/nginx'
  $blockdir = '/etc/nginx/conf.d'
  $logdir = '/var/log/nginx'
  $default_docroot = '/var/www'
 
  #$docroot

  #$docroot = $root ? {
  #  undef   => $default_docroot,
  #  default => $root,
  #}

  $user = $::osfamily ? {
    'redhat' => 'nginx',
    'debian' => 'www-data',
  }

  $nginx_ver = 'latest'


}
