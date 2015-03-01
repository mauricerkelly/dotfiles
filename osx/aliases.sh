if ! is_mac; then
    return
fi

alias cdas='cd $HOME/Library/Application\ Support'
alias conv_tesco='iconv -c -f utf-8 -t ascii report.csv | tail -n +2 > stripped.csv'
alias dr='defaults read'
alias dwr='defaults write'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
