# AF Linux Config

GNOME is amazing, haters can suck it. I'm not including any other DE setup.

### Keybindings

- Config file with custom keybindings
- Modifier general priniciples

  - `Super` - control windows, navigation, and system (never "enters program" scope)
    - Necessary and sufficient for system control
    - ALL system hotkeys should include `super`
    - NO program hotkeys should include `super`
  - `Ctrl` - main program control key (see below).
  - `Option`/`Alt` - idk, also within program scope
  - Obv different on Mac - all 3 modifiers can work in and out of programs

- Common shortcuts

  - `Ctrl + ,` to open settings
    - Not sure how to do this. Look into `mutter`
  - `Ctrl + l` to search (in some way)
    - Implemented by Firefox, Spotify
    - Change for shell - fzf - instead of being clear
  - `Ctrl + k` to clear shell

### My custom GNOME shortcuts

- Core workspace navigation
  - `super + z` - move left
  - `super + x` - move right
  - `super + c` - move to last workspace
  - `super + Q / W / E / R / T` - open workstations 1-5
  - `shift + super + Q / W / E / R / T` - move open window to workstations 1-5
- Window managment
  - `super + up` - maximize
  - `super + down` - un-maximize
  - `super + left` - move to left split-panel (or out of right split-panel)
  - `super + right` - move to right split-panel (or out of left split-panel)
  - `super + w` - close window
  - `super + h` - hide?
  - [later] `super + q` - close active program
- Switcher

### Terminal

- Main Terminal NerdFont: `JetBrains MonoNL Nerd Font Mono`
- Alacritty - nice terminal. Config for dark theme in alacritty.toml
- Maybe put that "coolnight" theme in github repo

### Shell

- On Linux, use `bash` (on mac, use `zsh`)
- Core shell plugins
  - `fzf`
  - `zoxide`
  - `tldr`
  - `eza`
- Aliases
  - Debian - a bunch of `apt` aliases, since apt kinda sucks

### Package/Program Installations

- I guess I'll write with Debian and `apt` in mind - but it could be worth making one for (for Fedora `dnf`)

#### Basic - For any desktop

- Uninstall GNOME games/bloat
- Dark mode
- Custom keybindings with `dconf` and `gsettings
- [Set up app folders](https://askubuntu.com/questions/1283655/how-can-i-create-app-folders-through-terminal-in-ubuntu-20-04)
- [later] `mutter` bindings
  - sort windows
  - nudge centerline
  - `super + q` - [close all windows](https://www.reddit.com/r/gnome/comments/8l5wtg/til_you_can_close_windows_from_the_alttab/) ([other idea](https://askubuntu.com/questions/262419/close-all-windows-of-the-same-application-in-gnome-shell))
  - [idea for finding app names](https://stackoverflow.com/questions/48797323/retrieving-active-window-from-mutter-on-gnome-wayland-session)
  -
- Configure flathub
- [maybe] configure snapcraft
  - Hide stupid `Snap` folder
  - Does this come on Fedora or Nobara

### Advanced - for computers where I use terminal extensively

- Command line apps

  - configure `bat`
  - add `ctrl + l` for `fzf` find
  - add my .bashrc

- `alacritty`, with above config
- `rig`, `pak`, `R`, and [Rstudio](https://github.com/rstudio/rstudio/tree/main/dependencies/linux)

  - Hide stupid `R` folder

- [maybe] `FiraCode Nerd Font`
- `Visual Studio Code`
- `Postgres`
- `rustup`, `rust`, and `cargo`
- [later] `rustrover`
- [later] `docker`
- Add an app folder for all t\*\*\*\*hese programs

### Gaming

- For ❤️ Kayla's computer ❤️
- Extra bells and whistles, probably based on Fedora or Nobara
- Discord
- Spotify
- Snapcraft
- Cider (Apple Music Client)
- EA of course

### So, which install scripts?

##### linux-basic-config.sh

- Uninstall GNOME bloat
- Configure system keybindings
- Configure app folders, dock, etc.
- Add flathub repo [maybe] and snapcraft

##### linux-advanced-config.sh

- Install command line apps
- Configure terminal keybindings
- Alacritty
  - `Ctrl + K`= clear, idk how
  - Actually it might be shell-level
- Installing graphical coding programs
  - "Coding" App Folder for those programs
  - Maybe need Chrome for `chromote`

### Install before all

- `git`
- `jq` - json parser
- `dconf` / `gsettings`
- [maybe] `curl`

### Files needed in repo

- programs.json - for programs that don't need any weird installation
- .bashrc for linux (and .zshrc for mac)
- alacritty.toml (for mac and linux)

### Closing thoughts

- [maybe] gaming-config??? basic is minimal install
- [maybe] also server-config?
- Yay!

That's it!! Have fun :)
