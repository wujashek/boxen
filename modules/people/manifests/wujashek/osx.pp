class people::wujashek::osx {

  require iterm2::dev

  include osx::global::disable_key_press_and_hold
  include osx::global::disable_autocorrect
  include osx::dock::autohide
  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_removable_media_on_desktop
  include osx::finder::unhide_library

  boxen::osx_defaults { 'Tap to click':
    domain => 'NSGlobalDomain',
    key    => 'com.apple.mouse.tapBehavior',
    value  => '1',
    type   => 'int',
    host   => 'currentHost',
    user   => $::boxen_user,
  }
  boxen::osx_defaults { 'Tap to click global':
    domain => 'NSGlobalDomain',
    key    => 'com.apple.mouse.tapBehavior',
    value  => '1',
    type   => 'int',
    user   => $::boxen_user,
  }
  boxen::osx_defaults { 'BT Tap to click global':
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'Clicking',
    value  => true,
    user   => $::boxen_user,
  }
  boxen::osx_defaults { 'Expose gesture':
    domain => 'com.apple.dock',
    key    => 'showAppExposeGestureEnabled',
    value  => true,
    user   => $::boxen_user,
  }
  boxen::osx_defaults { 'Switch fn key and f buttons':
    domain => 'NSGlobalDomain',
    key    => 'com.apple.keyboard.fnState',
    value  => false,
    user   => $::boxen_user,
  }
  boxen::osx_defaults { 'iTerm 2 disable lion fullscreen':
    domain => 'com.googlecode.iterm2',
    key    => 'UseLionStyleFullscreen',
    value  => false,
    user   => $::boxen_user,
  }

}
