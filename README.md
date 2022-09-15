# Setup my Mac

## Install programs

```bash
brew install ansible pinentry z htop ncurses ripgrep stow httpie thefuck vim ca-certificates gnupg jq ngrep tldr wget tmux 
```

```bash
brew install --cask 1password datagrip firefox intellij-idea phpstorm rustdesk spotify whatsapp 1password-cli discord google-chrome iterm2 postman slack visual-studio-code
```

## Dotfiles

### Update submodules/ plugins

#### Update submodules to commited version

```bash
git submodule update --init --recursive
```

#### Update submodules to latest version

```bash
git submodule foreach --recursive git pull origin master
git add . && git commit -m "update plugins"
```

### Create symlinks

```bash
rm $HOME/.zshrc $HOME/.bashrc $HOME/.profile 
stow env git tmux vim zsh 
```
