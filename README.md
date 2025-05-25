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

Config files for `greetd` and `greetd-regreet` must go in `/etc/greetd`.
Therefore the files managed by `chezmoi` are placed in `~/.config/greetd`,
and then symlinks are created in `/etc/greetd`.
For example, the following command would create a symlink between `chezmoi`-managed
`config.toml` and place the file in the folder required by `greetd`:

```bash
sudo ln -s /home/dle/.config/greetd/config.toml /etc/greetd/config.toml
```

Note that `sudo` could be required based on permissions required for writing to `/etc`.

