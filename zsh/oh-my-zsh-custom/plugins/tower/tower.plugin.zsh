local _tower_paths > /dev/null 2>&1
_tower_paths=(
    "$HOME/Applications/Tower.app"
    "/Applications/Tower.app"
)

for _tower_path in $_tower_paths; do
    if [[ -a $_tower_path ]]; then
        alias gt="open -a '$_tower_path'"
        break
    fi
done

alias gtt='gt .'
