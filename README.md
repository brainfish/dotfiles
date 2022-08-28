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
