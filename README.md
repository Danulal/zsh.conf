# Danulal's personal zsh config files
## Installation
### One Command Install
- Debian 13 (will delete old config)
```
sudo apt install -y zsh zsh-syntax-highlighting zsh-autosuggestions fzf starship git && git clone https://github.com/Danulal/zsh.conf ~/.config/zsh && cd ~/.config/zsh && git submodule update --init && git checkout debian && rm -f ~/.zshrc ~/.config/starship.toml && ln -s ~/.config/zsh/starship.toml ~/.config/starship.toml && ln -s ~/.config/zsh/.zshrc ~/.zshrc && chsh -s /bin/zsh && exec zsh
```
### Manual Install
Clone this repo into your config folder
```
git clone https://github.com/Danulal/zsh.conf ~/.config/zsh && cd ~/.config/zsh && git submodule update --init
```
If using debian or other distro that uses that path for ```zsh-autosuggestions``` and ```zsh-syntax-highlighting``` checkout the debian branch
```
git checkout debian
```
Backup your old config if necessary
```
mv ~/.zshrc ~/.zshrc.bak & mv ~/.config/starship.toml ~/.config/starship.toml.bak
```
Or delete it
```
rm ~/.zshrc ~/.config/starship.toml
```
Symlink the config files to their proper places
```
ln -s ~/.config/zsh/starship.toml ~/.config/starship.toml && ln -s ~/.config/zsh/.zshrc ~/.zshrc
```

## Important note!
If you get an error along the lines of ```bad math expression: illegal character: ^M``` or\
```zsh parse error near `\n'``` you need to convert the files to unix line endings

## Dependencies
- zsh
- zsh-syntax-highlighting
- zsh-autosuggestions
- fzf
- starship

## Plugins used:
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [fzf-tab](https://github.com/Aloxaf/fzf-tab)

### Plugins from [oh my zsh](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins)
- sudo
- history
