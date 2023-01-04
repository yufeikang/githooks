# Bitbucket

This plugin allows you to set BITBUCKET_AUTO_MERGE_EXEC_FLAG and BITBUCKET_AUTO_MERGE_BRANCH. When the flag is contained in the commit message, the branch will be merged into BITBUCKET_AUTO_MERGE_BRANCH, and the BITBUCKET_AUTO_MERGE_EXEC_FLAG  will be deleted form the commit message.

## Dependencies

### Environment variables
* BITBUCKET_AUTO_MERGE_EXEC_FLAG
* BITBUCKET_AUTO_MERGE_BRANCH
* BITBUCKET_USER
* BITBUCKET_PASSWORD
* BITBUCKET_WORKSPACE

### cli tools
* jq
* curl