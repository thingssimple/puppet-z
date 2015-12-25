class z {
  package { 'z':
    ensure => present
  }

  $home = "/Users/${::boxen_user}"

  file_line { "Source z":
    path => "${home}/.zshrc",
    line => 'source `brew --prefix`/etc/profile.d/z.sh'
  }
}
