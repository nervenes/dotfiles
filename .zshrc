fpath+=$(brew --prefix)/share/zsh/site-functions
fpath+=$HOME/.dotfiles/plugins/zsh-completions/src
fpath+=$HOME/.dotfiles/plugins/zsh-xcode-completions/src

autoload -Uz compinit && compinit

source <(fzf --zsh)
source $HOME/.dotfiles/plugins/fzf-tab/fzf-tab.plugin.zsh
source $HOME/.dotfiles/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt hist_ignore_all_dups
setopt inc_append_history
