
# ci

Helper to run CI/CR related commands.


## Setup

```shell
curl https://raw.githubusercontent.com/ernestoalejo/ci/master/ci.sh > ~/bin/ci && chmod +x ~/bin/ci
```


### Docs


| Command | Action |
| ------- | ------ |
| `ci draft` | Push a new DRAFT commit to Gerrit. |
| `ci push` | Push a new commit to Gerrit. |
| `ci release` | Release a new version to production. |
| `ci update` | Update local master to match remote branch. |
