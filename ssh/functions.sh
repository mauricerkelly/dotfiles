# ssh -N -f -L 5922:127.0.0.1:5900 administrator@208.52.182.38
function ssh_tunnel() {
  if [[ $# != 2 ]]; then
    echo "Invalid argument count: $#"
    return 1
  fi

  remote_host=$1
  local_port=$2
  ssh -N -f -L $local_port:127.0.0.1:5900 $remote_host
}
