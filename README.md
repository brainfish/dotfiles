# dotfiles
# Now with SpicyLemon's git_diff_explorer!

## Set up git identity, editor and global gitignore
```
git config --global user.name "Brian Fish"
git config --global user.email "apparissus@gmail.com"
git config --global core.excludesfile ~/code/dotfiles/gitignore.global
git config --global core.editor vim
```

## Symlink conf files
~/.config/karabiner/ -> karabiner/
~/.config/starship.toml -> starship.toml
~/.vimrc -> vimrc
~/.tmux.conf -> tmux.conf
~/.config/karabiner/ -> karabiner/

## brew packages
brew install zsh asdf fortune lolcat cowsay figlet terminal-notifier mdv starship jq
brew install pyenv pyenv-virtualenv direnv

## install oh-my-zsh
https://ohmyz.sh/#install
Update ~/.zshrc (see zshrc-example)

## iTerm2 setup
Install monofur from files/
Prefs -> Profiles -> Add from JSON -> files/iTerm/Phantom 84.json
Select background image, adjust blending

## Disable "last login"
touch ~/.hushlogin

## Screensaver setup
copy images/Screensavers to ~/Movies/Screensavers
install SaveHollywood screensaver (check files/ if no longer available for download)
Enable SaveHollywood, add ~/Movies/Screensavers/current.mp4 to list of files


## Work computer
brew install awscli aptible

