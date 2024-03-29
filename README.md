# Yorkit's dotfiles & Things to do with fresh macOS

- Change DNS (to [1.1.1.1](https://1.1.1.1/dns/), or [Google](https://developers.google.com/speed/public-dns))
- Install the Xcode Command Line Tools: `xcode-select --install`
- Install Rosetta (For Apple Silicon only): `sudo softwareupdate --install-rosetta`
- Install Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`
- Login to app store (prepare to install app)
- Install `Xcode`
- Agree to Xcode `sudo xcodebuild -license accept`
- Install pretty much everything else: `eval "$(/opt/homebrew/bin/brew shellenv)" && curl https://raw.githubusercontent.com/yorkittran/dotfiles/master/Brewfile -s -o Brewfile && brew bundle install`
- Import SSH Keys, GPG Keys

```sh
sudo mkdir ~/.ssh && sudo vi ~/.ssh/id_rsa
sudo touch ~/.ssh/known_hosts
sudo chown -v $USER ~/.ssh
sudo chown -v $USER ~/.ssh/id_rsa
sudo chown -v $USER ~/.ssh/known_hosts
gpg —-import /path/to/public-key-backup
gpg —-import /path/to/secret-key-backup
```

- Config git:

```sh
git config --global user.name "Your Name Here"
git config --global user.email "your_email@youremail.com"
git config --global user.signingkey "yourgpgkey"
git config --global commit.gpgsign true
git config --global help.autocorrect 1
```

- Install oh-my-zsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins $ZSH_CUSTOM/plugins/autoupdate
git clone https://github.com/Aloxaf/fzf-tab ~ZSH_CUSTOM/plugins/fzf-tab
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/mroth/evalcache ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/evalcache
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

- Grab `.zshrc` from this repository and use it the way you like (like install `oh-my-zsh & some plugins`)
- Initial some packages:

```sh
broot
```

- Install nodejs version

```sh
fnm install 16
fnm install 18
fnm install 19
fnm default 19
fnm alias 18 lts
npm i -g typescript eslint
corepack enable
# For nodejs < 16
npm i -g corepack
```

- Install Docker from [here](https://docs.docker.com/desktop/install/mac-install/)
- Install MySQL from [here](https://dev.mysql.com/downloads/mysql/) (I prefer dmg installation because it come with preference menu), remember to `mysql_secure_installation`
- Config for MySQL:

```sh
echo 'export PATH=/usr/local/mysql/bin:$PATH' >> ~/.zshrc
. ~/.zshrc
mysql_secure_installation
```

- Install `battery` `curl -s https://raw.githubusercontent.com/actuallymentor/battery/main/setup.sh | bash`
- Run `battery` `battery maintain 80`
- Config `Alacritty` - `~/.config/alacritty/alacritty.yml`

- Import config for `Raycast`
- Install `Raycast` extensions [Wiki](https://github.com/huynhducduy/dotfiles/wiki/Raycast-Extensions)
- Config `Logi Options`
- Config `Openkey` - especially the `modern icon` which fit with macOS Big Sur
- Open all apps and verify, then check for startup apps.
- Check the following settings in `System Preferences`:
  - General: Dark Appearence, Small sidebar icons, no recent items
  - FileVault: Off
  - Hot Corners: Mission control, Desktop
  - Keyboard: disable auto correction
  - Sharing: computer name
  - Dock + Menubar: auto hide dock, hide everything on menubar except battery
  - Display: turn off true tone
  - Display resolution
  - Accessibility: Pointer Control: ignore built-in trackpad, slow down trackpad scroll speed, disable track pad when mouse keys => options 5 times (oply work for external keyboard)
  - Finder Pref: show all extensions,...
- Contexts: Disable panel, Cmd Tab start Fast Search on typing
