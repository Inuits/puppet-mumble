# Class: mumble::install
#
# Class which installs the nececcary packages from the inuits repository
class mumble::install {
  package{$::mumble::package_name:
    ensure  => 'installed',
    require => $::operatingsystem ? {
      /(centos|redhat|fedora)/  => Yumrepo['inuits'],
      default                   => undef,
    },
  }
}
