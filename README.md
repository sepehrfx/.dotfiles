# .dotfiles
Archlinux dotfiles.

Install

```bash
$ sudo pacman -S base-devel npm git rsync
$ sudo pacman -S thefuck fasd fzf vim tmux zsh-syntax-highlighting powerline keychain
$ npm install --global pure-prompt
$ git clone https://github.com/q9f/.dotfiles.git
$ rm -rf .dotfiles/.git/ .dotfiles/.gitignore .dotfiles/LICENSE .dotfiles/README.md
$ rsync -avh .dotfiles/ $HOME/
$ rm -rf .dotfiles/
$ source $HOME/.zshrc
```

Credits

- uses fasd: https://github.com/clvv/fasd
- uses pure: https://github.com/sindresorhus/pure
- uses fzf: https://github.com/junegunn/fzf
- uses dracula: https://github.com/dracula/vim
- uses airline: https://github.com/vim-airline/vim-airline
- uses tmux-dracula: https://github.com/sei40kr/tmux-airline-dracula
- uses thefuck: https://github.com/nvbn/thefuck
- uses `zsh-syntax-highlighting` (fish-like)

Thanks

- inspired by: https://github.com/andresilva/dotfiles
