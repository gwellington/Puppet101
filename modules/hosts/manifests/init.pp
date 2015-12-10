class hosts {
  host { 'testing.puppetlabs.vm':
    ensure       => present,
    host_aliases => ['testing.puppetlabs.vm', 'testing'],
    ip           => '127.0.0.1',
    target       => '/etc/hosts',
  }
  host {'thisismynewhost.puppetlabs.vm':
    ensure       => absent,
    host_aliases => ['thisismynewhost.puppetlabs.vm', 'thisismynewhost']
  }
}

