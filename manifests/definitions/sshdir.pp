define sshkey::sshdir (
  $user = undef,
  $group = undef
) {

  file { "${name}/.ssh":
    owner => $user,
    group => $group,
    mode => "0700",
    ensure => "directory",
    require => User[$user],
  }

}