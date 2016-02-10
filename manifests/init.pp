application jenkins (
  $tomcat_host,
) {

  ###
  # Application component role
  jenkins::app { $title:
    export => Token["jenkins ${title}"],
  }

  ###
  # Apache reverse proxy component role
  jenkins::rproxy { $title:
    host    => $tomcat_host,
    consume => Token["jenkins ${title}"],
  }

}
