# .dotfiles
Archlinux/Nix dotfiles.

Install

```bash
sudo pacman -S base base-devel curl zsh
curl -L https://nixos.org/nix/install | sh -s -- --daemon
nix-env --install man-db nodejs git rsync fasd-unstable fzf vim tmux zsh-syntax-highlighting powerline keychain pure-prompt
git clone --recursive https://github.com/q9f/.dotfiles.git
rm -rf .dotfiles/.git/ .dotfiles/.gitignore .dotfiles/LICENSE .dotfiles/README.md
rsync -avh .dotfiles/ $HOME/
rm -rf .dotfiles/
chsh -s /usr/bin/zsh
source $HOME/.zshrc
```

Credits

- uses pure: https://github.com/sindresorhus/pure
- uses fasd: https://github.com/clvv/fasd
- uses fzf: https://github.com/junegunn/fzf
- uses dracula: https://github.com/dracula/vim
- uses airline: https://github.com/vim-airline/vim-airline
- uses tmux-dracula: https://github.com/sei40kr/tmux-airline-dracula
- uses `zsh-syntax-highlighting`: https://github.com/zsh-users/zsh-syntax-highlighting (fish-like)
- uses `zsh-nix-shell`: https://github.com/chisui/zsh-nix-shell
- uses `nix-zsh-completions`: https://github.com/nix-community/nix-zsh-completions
