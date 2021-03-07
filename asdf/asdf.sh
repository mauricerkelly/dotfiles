if is_mac; then
  echo "Setting up asdf"
  test -s $(brew --prefix asdf)/asdf.sh && source $(brew --prefix asdf)/asdf.sh
fi
