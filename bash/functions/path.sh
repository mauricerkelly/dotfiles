function add_to_path() {
    if [ -z $1 ]; then
        return 0;
    else
        if [ -d $1 ]; then
            export PATH=$PATH:$1
        fi
    fi
}


function path_append() {
    if [ -z $1 ]; then
        return 0;
    fi
    path_remove $1;
    export PATH="$PATH:$1";
}

path_prepend() {
    if [ -z $1 ]; then
        return 0;
    fi
    path_remove $1;
    export PATH="$1:$PATH";
}

path_remove() {
    if [ -z $1 ]; then
        return 0;
    fi
    export PATH=`echo -n $PATH | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//'`;
}