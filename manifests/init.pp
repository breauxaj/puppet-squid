class squid {
    $required = $operatingsystem ? {
        /(?i-mx:centos|fedora|redhat|scientific)/ => 'squid',
    }

    $paths = $operatingsystem ? {
        /(?i-mx:centos|fedora|redhat|scientific)/ => [ '/etc/tripwire', '/var/lib/tripwire' ],
    }

    package { $required: ensure => latest }

    file { $paths:
        ensure => directory,
        owner => 'root',
        group => 'root',
        mode => 0700,
    }

}