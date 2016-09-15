if is_mac; then
  alias b='brew'
  alias bc='brew cask'
  alias bce='brew cask edit'
  alias bci='brew cask install'
  alias bcu='brew cask update --verbose'
  alias cdc='cd $(brew --repository)/Library/Taps/caskroom/homebrew-cask'
  alias cdcv='cd $(brew --repository)/Library/Taps/caskroom/homebrew-versions'
  alias install_brew='ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
  alias install_brew_cask='install_cask caskroom/cask'
  alias update-airmail='brew cask cleanup; brew cask install airmail-beta --force'
  alias update-banktivity='brew cask cleanup; brew cask install banktivity --force'
fi
