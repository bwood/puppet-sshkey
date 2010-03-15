/*
define sshkey::privatekey (
  $user = undef,
  $group = undef,
  $sshdir = undef
) {

  file { "${sshdir}/id_dsa":
    owner => $user,
    group => $group,
    mode => "0600",
    ensure => "present",
    source => "puppet:///users/${user}/keys/id_dsa",
    require => File[$sshdir],
  }

}
*/