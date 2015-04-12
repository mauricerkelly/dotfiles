function brew_package_is_installed() {
  installed_packages=`brew list -1`
  for installed_package in $installed_packages; do
    if [[ $installed_package == $1 ]]; then
      return 0
    fi
  done

  return 1
}

function brew_tap_is_installed() {
  installed_package=`brew tap | grep "$1"`
  if [[ $installed_package == $1 ]]; then
    return 0
  fi

  return 1
}

function brew_cask_package_is_installed() {
  brew_tap_is_installed "caskroom/cask"
  return $?
}

function brew_cask_is_installed() {
  installed_casks=`brew cask list`
  for installed_cask in $installed_casks; do
    if [[ $installed_cask == $1 ]]; then
      return 0
    fi
  done

  return 1
}

function install_cask() {
  brew_cask_is_installed $1
  if [[ $? == 1 ]]; then
    brew cask install $1
    return 0
  fi

  echo "Cask $1 already installed - skipping..."
  return 1
}

if [[ $SHELL == "/usr/local/bin/bash" ]]; then
  export -f brew_package_is_installed
  export -f brew_cask_package_is_installed
  export -f brew_cask_is_installed
  export -f install_cask
fi
