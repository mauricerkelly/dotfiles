if ! is_mac; then
    return
fi

alias dr='defaults read'
alias dwr='defaults write'
alias genctags='/Applications/BBEdit.app/Contents/Helpers/ctags --excmd=number --tag-relative=no --fields=+a+m+n+S -f tags -R "$PWD"'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

