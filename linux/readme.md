# AF Linux Config

GNOME is amazing, haters can suck it. I'm not including any other DE setup.

### Keybindings

* Config file with custom keybindings
* Modifier general priniciples
  * `Super` - control windows, navigation, and system (never "enters program" scope)
    * Necessary and sufficient for system control
    * ALL system hotkeys should include `super`
    * NO program hotkeys should include `super`
  * `Ctrl` - main program control key (see below).
  * `Option`/`Alt` - idk, also within program scope
  * Obv different on Mac - all 3 modifiers can work in and out of programs
* Common shortcuts
  * `Ctrl + ,` to open settings
    * Not sure how to do this. Look into `mutter`
  * `Ctrl + l` to search (in some way)
    * Implemented by Firefox, Spotify
    * Change for shell - fzf - instead of being clear
  * `Ctrl + k` to clear shell

### Terminal

* Main Terminal NerdFont: `JetBrains MonoNL Nerd Font Mono`
* [maybe] For R - `FiraCode Nerd Font`
* Alacritty - nice terminal. Config for dark theme in alacritty.toml
* Maybe put that "coolnight" theme in github repo

### Shell

* On Linux, use `bash` (on mac, use `zsh`)
* Core shell plugins
  * `fzf`
  * `zoxide`
  * `tldr`
  * `eza`
* Aliases
  * Debian - a bunch of `apt` aliases, since apt kinda sucks

### Package/Program Installations

* I guess I'll write with Debian and `apt` in mind - but it could be worth making one for (for Fedora `dnf`)

#### Workstation - For any desktop

* Uninstall GNOME games/bloat
* Dark mode
* Custom keybindings with `dconf` and `gsettings
* [Set up app folders](https://askubuntu.com/questions/1283655/how-can-i-create-app-folders-through-terminal-in-ubuntu-20-04)

#### Coding - for computers where I use terminal extensively

* Command line apps
* `Alacritty`, with above config
* `rig`, `pak`, `R`, and [Rstudio](https://github.com/rstudio/rstudio/tree/main/dependencies/linux)
* `Visual Studio Code`
* Postgres
* `rustup`, `rust`, and `cargo`
* Maybe some docker stuff?
* Add an app folder for all these programs

So, which install scripts

* linux-config.sh
*
