#!/usr/bin/env bash

# if not exist HOOKS_DIR, init default value
if [ -z "$HOOKS_DIR" ]; then
    HOOKS_DIR=$HOME/.githooks
fi

# git clone repository to local if not exist
if [ ! -d "$HOOKS_DIR" ]; then
    git clone https://github.com/yufeikang/githooks.git $HOOKS_DIR
else
    cd $HOOKS_DIR
    git pull
fi

# old git hooks path
old_git_hooks_path=$(git config --global --get core.hooksPath)

# check old git hooks is not same with new git hooks path
if [ "$old_git_hooks_path" != "$HOOKS_DIR" ]; then
    if [ -z "$old_git_hooks_path" ]; then
        # if not exist, create new git hooks path
        git config --global core.hooksPath $HOOKS_DIR/hooks
    else
        # if exist, copy hooks to new git hooks path
        cp -rf $old_git_hooks_path/* $HOOKS_DIR/hooks/custom
        git config --global core.hooksPath $HOOKS_DIR/hooks
    fi
fi
