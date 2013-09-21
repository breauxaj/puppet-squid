class squid {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'squid',
  }

  package { $required: ensure => latest }

}
