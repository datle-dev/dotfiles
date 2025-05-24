## swaylock

`swaylock` config file default search locations are:

- `$HOME/.swaylock/config`
- `$XDG_CONFIG_HOME/swaylock/config`
- `SYSCONFDIR/swaylock/config`

In `sway` config, custom keybind assigned to call `swaylock` using `Super + Alt + L`
with argument for config file to use as follows:

`bindsym $mod+Mod4+L exec swaylock -C ~/.config/swaylock/config`

See [swaylock man pages](https://man.archlinux.org/man/swaylock.1).
