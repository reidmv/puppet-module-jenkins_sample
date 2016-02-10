Jenkins::Rproxy consumes Token { }

define jenkins::rproxy (
  $port = 80,
  $host = '0.0.0.0',
) {

  profile::apache::rproxy_vhost { $title:
    port => $port,
    host => $host,
  }

}
