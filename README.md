# Danulal's personal zsh config files
## Installation
Clone this repo into your config folder
```
git clone https://github.com/Danulal/zsh.conf ~/.config/zsh && cd ~/.config/zsh && git submodule update --init
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
- fzf
- starship

## Plugins used:
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [fzf-tab](https://github.com/Aloxaf/fzf-tab)

### Plugins from [oh my zsh](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins)
- sudo
- history
