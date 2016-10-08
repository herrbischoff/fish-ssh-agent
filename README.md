# fish-ssh-agent
Autostart ssh-agent function for fish.

## Functionality

Automatically starts up `ssh-agent` if it's not already running, adding all identities found under `~/.ssh`.

## Install with Fisherman

```bash
fisher i herrbischoff/fish-ssh-agent
```


### Test

Install [`fishtape`](https://github.com/fisherman/fishtape) and optionally a [`tap` converter](https://github.com/gummesson/tap-min):

    fishtape test/add_keys.fish
