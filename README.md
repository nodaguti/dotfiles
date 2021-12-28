# dotfiles

## Prerequisit

- Full Xcode installation

## Installation

```sh
$ curl -fsL https://raw.githubusercontent.com/nodaguti/dotfiles/master/bootstrap.sh | sh
```

There will be two reboots during the installation. After the first reboot, run

```sh
$ ~/workspaces/dotfiles/init/step2/init.sh
```

After the second reboot, run

```sh
$ ~/workspaces/dotfiles/init/step3/init.sh
```

## Manual post-process tasks

Unfortunately, some tasks are not automated as I've not found a way to do them with commands.

- Set up keyboard shortcuts
- Install [Source Han Code JP](https://github.com/adobe-fonts/source-han-code-jp/releases/latest)
- Set up applications including:
  - Firefox
    - Sign in to Firefox Sync
  - VS Code
    - Install [`settings-sync`](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)
  - Karabiner-Elements
  - Almost all other third-party applications...
