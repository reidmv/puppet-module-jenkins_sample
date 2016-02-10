Jenkins::Rproxy consumes Token { }

define jenkins::rproxy (
  $host,
) {

  profile::apache::rproxy_vhost { $title:
    port => '8080',
    host => $host,
  }

}
