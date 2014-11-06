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

export -f skdiff
