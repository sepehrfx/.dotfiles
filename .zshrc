# Added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit

# Pure zsh
fpath=( "$HOME/.zfunc" $fpath )
autoload -U promptinit; promptinit
prompt pure
fpath=( "$HOME/.zfunc" $fpath )

# fzf :)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
setopt AUTO_CD

# Colors
eval "`dircolors`"
alias ls='ls --color=auto'
alias ll='ls --color=auto -lshaF'
alias grep='grep --color=auto'

# History
setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt SHARE_HISTORY
HISTCONTROL=ignoredups:erasedups
HISTFILE=~/.histfile
HISTFILESIZE=100000
HISTSIZE=100000
SAVEHIST=10000000
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Environment
export CLICOLOR=true
export EDITOR=vim
export GOPATH="$HOME/.go"
export LSCOLORS="exfxcxdxbxegedabagacad"
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/.cargo/bin"
export SHELL="/usr/bin/zsh"

# fasd :)
eval "$(fasd --init auto)"
alias j='fasd_cd -i'

# the fuck
eval $(thefuck --alias)

# fish-like
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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

# add ssh to keychain
eval `keychain --agents ssh --eval id_ed25519 --quiet`

