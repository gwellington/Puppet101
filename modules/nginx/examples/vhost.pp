include nginx

nginx::vhost { 'derp.puppetlabs.vm': }
nginx::vhost { 'deeznuts.puppetlabs.vm': }
nginx::vhost { 'deezports.puppetlabs.vm': 
  port => '8080',
}
