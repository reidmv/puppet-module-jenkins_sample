Example application instance declaration:


    jenkins { 'test':
      nodes => {
        Node['node3'] => Jenkins::App['test'],
        Node['node4'] => Jenkins::Rproxy['test'],
      },
    }
