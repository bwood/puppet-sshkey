define sshkey::privatekey (
  $user = undef,
  $group = undef,
  $sshdir = undef,
  $content = undef
) {

  file { "${sshdir}/id_dsa":
    owner => $user,
    group => $group,
    mode =>  600,
    ensure => present,
    #source => "puppet:///users/${user}/keys/id_dsa",
    content => $content,
  }

}
