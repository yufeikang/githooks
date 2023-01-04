
# Install

```bash
curl -s https://raw.githubusercontent.com/yufeikang/githooks/master/install.sh | bash
```

# Usage

Add environment variable `GITHOOKS_PLUGINS` to your .zshrc/.bashrc file.

```shell
echo "export GITHOOKS_PLUGINS=\"bitbucket user_switch\"" >> ~/.zshrc
```

# Plugins
* bitbucket: 
    * post_commit: auto merge branch to
* user_switch
    * pre_commit: auto switch user