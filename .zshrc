fpath+=$(brew --prefix)/share/zsh/site-functions
fpath+=$HOME/.dotfiles/plugins/zsh-completions/src
fpath+=$HOME/.dotfiles/plugins/zsh-xcode-completions/src
fpath+=$HOME/.dotfiles/completions

autoload -Uz compinit && compinit

source <(fzf --zsh)
source $HOME/.dotfiles/plugins/fzf-tab/fzf-tab.plugin.zsh
source $HOME/.dotfiles/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt hist_ignore_all_dups
setopt inc_append_history

alias ls="ls --color=auto"
alias ll="ls -la --color=auto"

export MANPAGER="less -R --use-color -Ddg -Du+y"
export FZF_DEFAULT_OPTS="--layout=reverse --color=bg+:#37383d,bg:#292a2f,border:#5c5f66,spinner:#4db0cc,hl:#4db0cc,fg:#d1d1d1,header:#4db0cc,info:#78c2b3,pointer:#ff79b2,marker:#ff79b2,fg+:#e6e6e6,prompt:#d9c97c,hl+:#ff79b2"
