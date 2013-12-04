class people::wujashek {
  include people::wujashek::osx

  include iterm2::dev
  include tmux
  include vim
  include ctags

  include firefox
  include chrome

  include alfred
  include mplayerx
  include dropbox
  include skype
  include mysql_workbench
  include mysql

  $home     = "/Users/${::boxen_user}"

  package { "reattach-to-user-namespace":
     ensure => installed,
  }

}
