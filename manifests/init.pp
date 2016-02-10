application jenkins () {

  ###
  # Application component role
  jenkins::app { $title:
    export => Token["jenkins ${title}"],
  }

  ###
  # Apache reverse proxy component role
  jenkins::rproxy { $title:
    consume => Token["jenkins ${title}"],
  }

}
