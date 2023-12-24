# .dotfiles
Archlinux dotfiles.

Setup base system

```bash
sudo pacman -S base base-devel linux linux-firmware amd-ucode dhcpcd iwd curl zsh vim xorg xorg-xinit xautolock i3 ttf-dejavu man-pages man-db dmenu polkit xdg-utils
sudo systemctl enable --now dhcpcd iwd
sudo pacman -S nodejs npm git rsync fasd fzf tmux zsh-syntax-highlighting openssh keychain ruby btop neofetch terminator
sudo npm install --global pure-prompt yarn lerna npm bower serve
git clone --recursive https://github.com/q9f/.dotfiles.git
rm -rf .dotfiles/.gi* .dotfiles/LICENSE .dotfiles/README.md
rsync -avh .dotfiles/ $HOME/
rm -rf .dotfiles/
chsh -s /usr/bin/zsh
source $HOME/.zshrc
```

What else

```bash
sudo pacman -S syncthing noto-fonts noto-fonts-emoji adwaita-icon-theme cups cups-pdf ranger okular shotwell pinta scrot caja meld mtr code obsidian hplip
sudo systemctl enable --now syncthing@user
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri
pikaur -S brave-bin enpass-bin
```

Credits

- uses pure: https://github.com/sindresorhus/pure
- uses fasd: https://github.com/clvv/fasd
- uses fzf: https://github.com/junegunn/fzf
- uses dracula: https://github.com/dracula/vim
- uses airline: https://github.com/vim-airline/vim-airline
- uses tmux-dracula: https://github.com/sei40kr/tmux-airline-dracula
- uses `zsh-syntax-highlighting`: https://github.com/zsh-users/zsh-syntax-highlighting (fish-like)
