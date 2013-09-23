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
  include php::5_4_17
  include php::fpm::5_4_17

  class { 'php::global': version => '5.4.17' }

  php::extension::xdebug { 'xdebug for 5.4.17':
    version => '2.2.1',
    php     => '5.4.17',
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
