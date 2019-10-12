function reset_integrator() {
  if [[ ${OPTIC_LINK_HOME} == "" ]]; then
    echo "No OPTIC_LINK_HOME environment variable set up"
    return
  fi

  for directory in "var/web" "var/data" "var/log" "var/tmp" "var/run"; do
    directory_to_empty="${OPTIC_LINK_HOME}/${directory}"
    if [[ -d "${directory_to_empty}" ]]; then
      echo "Emptying directory: ${directory_to_empty}"
      rm -rf "${directory_to_empty}/*"
    fi
  done

  for file in "etc/integrator.conf" "etc/integrator.update_id.conf" "etc/server.conf"; do
    file_to_remove="${OPTIC_LINK_HOME}/${file}"
    if [[ -f "${file_to_remove}" ]]; then
      echo "Removing file: ${file_to_empty}"
      rm -f "${file_to_remove}"
    fi
  done

  if [[ ! -f "${OPTIC_LINK_HOME}/var/tmp/integrator.new" ]]; then
    echo "Adding integrator.new file to var/tmp"
    touch "${OPTIC_LINK_HOME}/var/tmp/integrator.new"
  fi

  echo "All set. Nice fresh Integrator!"
}

if [[ $SHELL == "/usr/local/bin/bash" ]]; then
  export -f skdiff
  export -f showcitests
  export -f hidecitests
  export -f copyDatabasesIntoPlace
fi


function rename_logs() {
  for file in `ls -1 *.log.*`
  do 
    suffix=${file#*log.}
    prefix=${file%.log*}
    mv $file $prefix.$suffix.log
  done
}
