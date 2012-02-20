if is_mac; then
    export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
elif is_linux; then
    export JAVA_HOME=/usr/local/jdk1.7.0_01
else
    unset JAVA_HOME
fi