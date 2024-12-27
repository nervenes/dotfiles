setopt hist_ignore_all_dups
setopt inc_append_history

fpath+=$(brew --prefix)/share/zsh/site-functions
fpath+=$HOME/.dotfiles/plugins/zsh-completions/src
fpath+=$HOME/.dotfiles/plugins/zsh-xcode-completions/src
fpath+=$HOME/.dotfiles/completions

autoload -Uz compinit && compinit

source <(fzf --zsh)
source $HOME/.dotfiles/plugins/fzf-tab/fzf-tab.plugin.zsh
source $HOME/.dotfiles/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export FZF_DEFAULT_OPTS="--layout=reverse"
export EDITOR=vim
export VISUAL=vim
