function add_to_path() {
    if [ -z $1 ]; then
        return 0;
    else
        if [ -d $1 ]; then
            export PATH=$PATH:$1
        fi
    fi
}
