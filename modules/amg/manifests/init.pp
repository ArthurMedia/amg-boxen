class amg {
  # common tools
  include iterm2::stable
  include virtualbox
  include chrome
  include chrome::canary
  include firefox
  include sequel_pro
  include vlc
  include openoffice
  include gimp
  include keepassx
  include imageoptim

  # PHP-lol
  include php::5_4_26
  include php::fpm::5_4_26

  class { 'php::global': version => '5.4.26' }

  php::extension::pdo_dblib { 'pdo_dblib for 5.4.26':
    php => '5.4.26',
  }

  php::extension::xdebug { 'xdebug for 5.4.26':
    version => '2.2.1',
    php     => '5.4.26',
  }

  php::extension::imagick { 'imagick for 5.4.26':
    php     => '5.4.26',
    version => '3.1.2',
  }

  php::extension::intl { 'intl for 5.4.26':
    version => '2.0.1',
    php     => '5.4.26',
  }

  # Node
  class { 'nodejs::global': version => 'v0.10.5' }

  # Ruby
  class { 'ruby::global': version => '2.0.0' }

  # Misc
  $useful = ['htop-osx', 'curl', 'ssh-copy-id', 'pwgen',]

  package { $useful:
    ensure => latest,
  }
}
