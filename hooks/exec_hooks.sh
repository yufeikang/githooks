# !/bin/env bash

# get this file path
hooks_dir=$(
    cd $(dirname $0)
    pwd
)

some variables that you can use:
# Reset
Color_Off='\033[0m' # Text Reset

# Regular Colors
Black='\033[0;30m'  # Black
Red='\033[0;31m'    # Red
Green='\033[0;32m'  # Green
Yellow='\033[0;33m' # Yellow
Blue='\033[0;34m'   # Blue
Purple='\033[0;35m' # Purple
Cyan='\033[0;36m'   # Cyan
White='\033[0;37m'  # White

HOOK_TYPE=$1

DEBUG_ECHO() {
    if [[ ! -z "$GITHOOKS_DEBUG" ]]; then
        echo "${Blue}DEBUG:$HOOK_TYPE${Color_off}: ${Yellow}$1${Color_off}"
    fi
}

DEBUG_ECHO "Start [$HOOK_TYPE]"

# if exist custom $HOOK_TYPE, run it
if [ -f "$hooks_dir/custom/$HOOK_TYPE" ]; then
    DEBUG_ECHO "custom [$HOOK_TYPE] : $hooks_dir/custom/$HOOK_TYPE"
    source $hooks_dir/custom/$HOOK_TYPE
fi

# check GITHOOKS_PLUGINS is not empty, loop plugins
if [[ ! -z "$GITHOOKS_PLUGINS" ]]; then
    for plugin in $GITHOOKS_PLUGINS; do
        _dir=$hooks_dir/plugins/$plugin/$HOOK_TYPE
        DEBUG_ECHO "plugin [$plugin] : $_dir"
        # if plugin dir not exist, skip it
        if [ ! -d "$hooks_dir/plugins/$plugin" ]; then
            echo "plugin [$plugin] not exist"
            continue
        fi
        if [ -f $_dir ]; then
            source $_dir
        fi
    done
fi
