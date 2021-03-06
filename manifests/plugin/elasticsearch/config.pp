# vim: tabstop=2 expandtab shiftwidth=2 softtabstop=2 foldmethod=marker
#
# == Class: stackdriver::plugin::elasticsearch::config
#
# Configures Elasticsearch Agent Plugin for Stackdriver Agent
#
class stackdriver::plugin::elasticsearch::config inherits stackdriver::plugin::elasticsearch {

  file { $config:
    ensure  => file,
    content => template("stackdriver/${::kernel}/${config}.erb"),
    owner   => 'root',
    group   => 'root',
    mode    => '0444',
    notify  => Service[$::stackdriver::svc],
  }

}

