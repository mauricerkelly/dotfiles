export LOGREGISTRATION_ROOT="/nfs-bfs/workspace/mkelly/ngp/registration"

export CCPATH="/opt/SUNWspro/bin"
export GMK_COMPAT=5
export CFG="debug"

if [ -f ~/bin/setupdev ]; then
    ~/bin/setupdev
fi

if [ ! -d $SRC_HEAD ]; then
    echo SRC_HEAD is invalid: [$SRC_HEAD]
fi

if [ ! -d $DERBASE ]; then
    echo DERBASE is invalid: [$DERBASE]
fi