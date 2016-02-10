Jenkins::Rproxy consumes Token { }

define jenkins::rproxy () {

  profile::apache::rproxy_vhost { $title:
    port => '8080',
    host => 'localhost',
  }

}
