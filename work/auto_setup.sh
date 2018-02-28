tab-color() {
    echo -ne "\033]6;1;bg;red;brightness;$1\a"
    echo -ne "\033]6;1;bg;green;brightness;$2\a"
    echo -ne "\033]6;1;bg;blue;brightness;$3\a"
}
tab-red() { tab-color 255 0 0 }
tab-green() { tab-color 0 255 0 }
tab-blue() { tab-color 0 0 255 }
tab-reset() { echo -ne "\033]6;1;bg;*;default\a" }

function setup_anomali_link_dev_dir() {
    if [[ ${PWD} =~ '/Users/mkelly/Development/anomali/anomali_link' ]]; then
        if [[ "${PWD}" == '/Users/mkelly/Development/anomali/anomali_link' ]]; then
            source venv/bin/activate
            export ANOMALI_HOME=${PWD}
        fi

        tab-color 239 255 86
    fi
}

function setup_siem_link_dev_dir() {
    if [[ ${PWD} =~ '/Users/mkelly/Development/anomali/siem_link' ]]; then
        if [[ ${PWD} == '/Users/mkelly/Development/anomali/siem_link' ]]; then
            source venv/bin/activate
            export XLINK_HOME=${PWD}
        fi

        tab-color 239 255 86
    fi
}

function setup_optic_link_dev_dir() {
    if [[ ${PWD} =~ '/Users/mkelly/Development/anomali/optic_link' ]]; then
        if [[ ${PWD} == '/Users/mkelly/Development/anomali/optic_link' ]]; then
            source venv/bin/activate
            export XLINK_HOME=${PWD}
            export OPTIC_LINK_HOME=${PWD}
        fi

        tab-color 239 255 86
    fi
}

chpwd_functions=(${chpwd_functions[@]} "setup_anomali_link_dev_dir" "setup_siem_link_dev_dir" "setup_optic_link_dev_dir")
