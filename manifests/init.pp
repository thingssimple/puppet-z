class z {
  package { 'z':
    ensure => present
  }

  $home = "/Users/${::boxen_user}"

  file { "${home}/.zshrc":
    ensure => present
  }

  file_line { "Add gnubin to all environment man paths":
    path => "${home}/.zshrc",
    line => 'source `brew --prefix`/etc/profile.d/z.sh'
  }
}
