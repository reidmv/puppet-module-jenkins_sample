Example application instance declaration:

    jenkins { 'test':
      tomcat_host => 'node3',
      nodes       => {
        Node['node3'] => Jenkins::App['test'],
        Node['node4'] => Jenkins::Rproxy['test'],
      },
    }
