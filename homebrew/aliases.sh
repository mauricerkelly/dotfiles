if ! is_mac; then
    return
fi

alias b='brew'
alias bc='brew cask'
alias bce='brew cask edit'
alias bci='brew cask install'
alias bcu='brew cask update --verbose'
alias cdc='cd $(brew --repository)/Library/Taps/caskroom/homebrew-cask'
alias cdcv='cd $(brew --repository)/Library/Taps/caskroom/homebrew-versions'
alias install_brew='ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
alias install_brew_cask='install_cask caskroom/cask'
alias update-airmail='brew cleanup; brew cask install airmail-beta --force'
alias update-banktivity='brew cleanup; brew cask install banktivity --force'

HB="$HOME/.dotfiles/homebrew"
alias install_brew_apps='brew bundle -v --file=$HB/Brewfile-brew'
alias install_mas_apps='brew bundle -v --file=$HB/Brewfile-mas'
alias install_bootstrap_apps='brew bundle -v --file=$HB/Brewfile-bootstrap'
alias install_dev_apps='brew bundle -v --file=$HB/Brewfile-dev'
alias install_general_apps='brew bundle -v --file=$HB/Brewfile-general'
