# dotfiles

## Installation

```
$ curl -fsL https://raw.githubusercontent.com/nodaguti/dotfiles/master/bootstrap.sh | sh
```

There will be two reboots during the execution.

## Manual post-process tasks

Unfortunately, some tasks are not automated as I've not found a way to do them with commands.

* Run initialisation tasks in the `manual-task` folder.
* Set up keyboard shortcuts
* Set up applications including:
  * Firefox
    * Launch a Firefox once to initialise a profile
    * Sign in to Firefox Sync
  * VS Code
    * Install [`settings-sync`](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)
  * Karabiner-Elements
  * Almost all other third-party applications...
