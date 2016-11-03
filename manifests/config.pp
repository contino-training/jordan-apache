# == Class: apache::config
#
class apache::config inherits apache {
  file { '/var/www/html/index.html':
    ensure => file,
    mode => '0644',
    source => template('apache/index.html.erb'),
  }
}
