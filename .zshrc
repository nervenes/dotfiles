fpath+=$(brew --prefix)/share/zsh/site-functions
fpath+=$HOME/.dotfiles/plugins/zsh-completions/src
fpath+=$HOME/.dotfiles/plugins/zsh-xcode-completions/src

autoload -Uz compinit && compinit

source <(fzf --zsh)
source $HOME/.dotfiles/plugins/fzf-tab/fzf-tab.plugin.zsh
source $HOME/.dotfiles/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt hist_ignore_all_dups
setopt inc_append_history

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats ' %b'
PROMPT='%n@%m %1~${vcs_info_msg_0_} %# '
