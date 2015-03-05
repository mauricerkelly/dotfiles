function is_linux() {
    KERNEL_TYPE=`uname -s`
    if [[ $KERNEL_TYPE == "Linux" ]]; then
        return 0;
    else
        return 1;
    fi
}

function is_mac() {
    KERNEL_TYPE=`uname -s`
    if [[ $KERNEL_TYPE == "Darwin" ]]; then
        return 0;
    else
        return 1;
    fi
}
