# Check for WORKSPACE_HEAD and BUILD_HEAD - if they are not set, then we don't want to set anything
if [ -z $WORKSPACE_HEAD ]; then
    return 0
fi

if [ -z $BUILD_HEAD ]; then
    return 0
fi

export LOGREGISTRATION_ROOT=$WORKSPACE_HEAD/ngp/registration
export SRC_HEAD=$WORKSPACE_HEAD/ngp/andes
export DERBASE=$BUILD_HEAD/ngp/andes/RedHat6
export CXXTEST_DERBASE=$DERBASE
export LD_LIBRARY_PATH=$DERBASE/lib:$DERBASE/thirdparty/lib

export CFG=debug

export GMK_COMPAT=5
export CFG="debug"

