function xcopen()
{
    WORKSPACES=`ls -d *.xcworkspace`

    for workspace in $WORKSPACES; do
        open $workspace && return
    done

    PROJECTS=`ls -d *.xcodeproj`

    for project in $PROJECTS; do
        open $project && return
    done

    echo "No workspaces or projects to open"

}
