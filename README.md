
# Install

```bash
curl -s https://raw.githubusercontent.com/yufeikang/githooks/master/install.sh | bash
```

# Usage

Add environment variable `GITHOOKS_PLUGINS` to your .zshrc/.bashrc file.

```shell
echo "export GITHOOKS_PLUGINS=\"bitbucket user_switch\"" >> ~/.zshrc
```

# Custom Environment Variables

1. Write .env file in your project root directory. The .env file will be loaded when githooks run.

2. set environment variable `GITHOOKS_ENV_FILE` to your system environment variable or .env file. The file will be loaded when githooks run too.

# Plugins
* [bitbucket](./hooks/plugins/bitbucket/README.md): 
    * post_commit: auto merge branch to
* [user_switch](./hooks/plugins/user_switch/README.md)
    * pre_commit: auto switch user