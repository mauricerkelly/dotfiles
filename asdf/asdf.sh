if is_mac; then
  test -s $(brew --prefix asdf)/asdf.sh && source $(brew --prefix asdf)/asdf.sh
fi
