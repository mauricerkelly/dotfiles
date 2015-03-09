function skdiff() {
  diff_dir=$1
  sk_dev_dir="$HOME/Development/SK"
  reg_dir="$sk_dev_dir/ipad-register/Pods/SKBackofficeSDK/SKBackofficeSDK/$diff_dir"
  sdk_dir="$sk_dev_dir/SKBackofficeSDK/SKBackofficeSDK/$diff_dir"

  if [ -e "$reg_dir" ]; then
    ksdiff "$reg_dir" "$sdk_dir"
  else
    echo "Error: one or both of the directories does not exist: $reg_dir; $sdk_dir"
  fi

}

function showcitests() {
  git update-index --no-assume-unchanged Register.xcodeproj/xcshareddata/xcschemes/CITests1.xcscheme
  git update-index --no-assume-unchanged Register.xcodeproj/xcshareddata/xcschemes/CITests2.xcscheme
  git update-index --no-assume-unchanged Register.xcodeproj/xcshareddata/xcschemes/CITests3.xcscheme
}

function hidecitests() {
  git update-index --assume-unchanged Register.xcodeproj/xcshareddata/xcschemes/CITests1.xcscheme
  git update-index --assume-unchanged Register.xcodeproj/xcshareddata/xcschemes/CITests2.xcscheme
  git update-index --assume-unchanged Register.xcodeproj/xcshareddata/xcschemes/CITests3.xcscheme
}

if [[ $SHELL == "/usr/local/bin/bash" ]]; then
  export -f skdiff
  export -f showcitests
  export -f hidecitests
fi
