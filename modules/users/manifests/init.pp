class users {
  user {'fundamentals':
    ensure   => present,
    password => '$1$7DwyaSyt$9Vct1a34KSd1mK4Tdfw6a1',
  }
}
