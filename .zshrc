fpath+=$(brew --prefix)/share/zsh/site-functions
fpath+=$HOME/.dotfiles/plugins/zsh-completions/src
fpath+=$HOME/.dotfiles/plugins/zsh-xcode-completions/src

autoload -Uz compinit && compinit

_dotnet_zsh_complete()
{
  local completions=("$(dotnet complete "$words")")

  if [ -z "$completions" ]
  then
    _arguments '*::arguments: _normal'
    return
  fi

  _values = "${(ps:\n:)completions}"
}

compdef _dotnet_zsh_complete dotnet

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

export DOTNET_CLI_TELEMETRY_OPTOUT=1
