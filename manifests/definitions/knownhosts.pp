/*

  Add a server's key to a user's known_hosts file

  Requires: camptocamp's Common module (line{})
*/

define sshkey::knownhosts (
  $ensure,
  $user = undef,
  $group = undef,
  $sshdir = undef,
  $type,
  $host,
  $host_aliases,
  $key
) {

  #TODO implement host_aliases

  $key_content = "${host} ${type} ${key}"
  file { "${sshdir}/known_hosts":
    owner => $user,
    group => $group,
    mode => "0644",
    ensure => present,
  }

  line { "known_hosts-${user}-${host}":
    file => "${sshdir}/known_hosts",
    line => $key_content,
    ensure => $ensure,
  }

}