define sshkey::publickey (
  $user = undef,
  $group = undef,
  $sshdir = undef,
  $content = undef
) {

  file { "${sshdir}/id_dsa.pub":
    owner => $user,
    group => $group,
    mode => "0644",
    ensure => "present",
    # Error: Not authorized to call find on /file_metadata....
    # http://projects.reductivelabs.com/issues/2748
    # source => "puppet:///users/${user}/keys/id_dsa.pub",
    content => $content,
    require => File[$sshdir],
  }

}