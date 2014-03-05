function acopen()
{
    WORKSPACES=`ls -d *.xcworkspace 2> /dev/null`

    for workspace in $WORKSPACES; do
        open -a AppCode.app "$workspace" && echo "Opening workspace $workspace" && return
    done

    PROJECTS=`ls -d *.xcodeproj 2> /dev/null`

    for project in $PROJECTS; do
        open -a AppCode.app "$project" && echo "Opening project $project" && return
    done

    echo "No workspaces or projects to open"

}
