# User Switch

This plugin can automatically switch git user config when pre-commit .

## Config

### Environment variables
* GIT_${workspace}_user
* GIT_${workspace}_email

## Q&A
### 1. what is workspace?
workspace is the name of the git remote repository. For example, if the remote repository is `https://github.com:username/repo.git`, the workspace is `username`.
If the remote repository is `git@bitbucket.org:workspace/repo.git`, the workspace is `workspace`.

### 2. Can I set multiple workspaces?
Yes.