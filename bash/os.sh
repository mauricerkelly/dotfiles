OPERSYS=`uname -s`
if [ $OPERSYS == "SunOS" ]; then
    # Need to differentiate between Sol 2.8 and 2.10
    SOL_VERS=`uname -r`
    if [ $SOL_VERS == "5.8" ]; then
        export PLATFORM="Solaris2.8"
    elif [ $SOL_VERS == "5.10" ]; then
        export PLATFORM="Solaris2.10"
    fi
    export EDITOR="/opt/local/bin/vim"
    export OS_IND="Sol"
elif [ $OPERSYS == "Linux" ]; then
    RH_VERS=`cat /etc/redhat-release`
    if [[ $RH_VERS =~ "6.1" ]]; then
        export PLATFORM="RedHat6"
    else
        export PLATFORM="RedHat5"
    fi
    export LANG="en_GB.ISO-8859-1"
    export EDITOR="/bin/vi"
    export OS_IND="Lin"
elif [ $OPERSYS == "Darwin" ]; then
    export OS_IND="OS X"
    export PLATFORM="MacOSX"
    export OSX_VERS=`sw_vers | grep 'ProductVersion:' | grep -o '[0-9]*\.[0-9]*\.[0-9]*'`
fi
