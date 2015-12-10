class uninstall {
  class {'apache':
    ensure => absent,
  }

  class {'wordpress':
    ensure => absent,
  }
}
