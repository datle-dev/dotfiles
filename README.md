## swaylock

`swaylock` config file default search locations are:

- `$HOME/.swaylock/config`
- `$XDG_CONFIG_HOME/swaylock/config`
- `SYSCONFDIR/swaylock/config`

In `sway` config, custom keybind assigned to call `swaylock` using `Super + Alt + L`
with argument for config file to use as follows:

`bindsym $mod+Mod4+L exec swaylock -C ~/.config/swaylock/config`

See [swaylock man pages](https://man.archlinux.org/man/swaylock.1).

## greetd

Original idea was for config files for `greetd` which must go in `/etc/greetd`
to be populated by symlinks, with the original files managed by `chezmoi`
and stored in `~/.config/greetd`.
However, upon startup, the computer doesn't seem to like the fact that
`greetd`'s `config.toml`, `regreet.toml`, and `sway-config` are symlinks.

So the files in `/etc/greetd` have been restored to normal
(i.e. no longer symlinks) and whenever I update files in `~/.config/greet`,
either directly or with `chezmoi edit`, I'll just have to copy the
files to `/etc/greetd` manually.

