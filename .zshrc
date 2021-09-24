# added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit

# pure zsh
fpath=( "$HOME/.zfunc" $fpath )
autoload -U promptinit; promptinit
prompt pure

# colors
eval "`dircolors`"
alias ls="ls --color=auto"
alias ll="ls --color=auto -lshaF"
alias grep="grep --color=auto"

# fasd :)
eval "$(fasd --init auto)"
alias j="fasd_cd -i"

# the fuck
eval $(thefuck --alias)

# add ssh to keychain
eval `keychain --agents ssh --eval id_ed25519 --quiet`

# bindkey
bindkey -e
bindkey "^?" backward-delete-char
bindkey "^[[1;5C" emacs-forward-word
bindkey "^[[1;5D" emacs-backward-word
bindkey "^[[2~" overwrite-mode
bindkey "^[[3~" delete-char
bindkey "^[[5C" end-of-line
bindkey "^[[5D" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[H" beginning-of-line
bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word

# history
setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt SHARE_HISTORY
HISTCONTROL="ignoredups:erasedups"
HISTFILE="$HOME/.histfile"
HISTFILESIZE=100000
HISTSIZE=100000
SAVEHIST=10000000
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# environment
export CLICOLOR=true
export EDITOR=vim
export GOPATH="$HOME/.go"
export LSCOLORS="exfxcxdxbxegedabagacad"
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.gem/ruby/3.0.0/bin"
export SHELL="/usr/bin/zsh"

# fish-like
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fzf :)
setopt AUTO_CD
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# NodeJS
source /usr/share/nvm/init-nvm.sh
nvm use stable --silent

# Welcome the user with the weather report
echo "Welcome back, $USER! <3"
curl "https://wttr.in/?format=4"
