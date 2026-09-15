export PATH="$HOME/.local/bin/:$PATH"
export EDITOR="micro"
alias sudo="sudo "
alias nano="micro"
alias ls="ls -A"
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous prefix
zstyle ':completion:*' menu no

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Plugins
autoload -U compinit; compinit
ABBR_USER_ABBREVIATIONS_FILE=~/zsh-plugins/zsh-abbr/abbr
ABBR_SET_EXPANSION_CURSOR=1
source ~/zsh-plugins/zsh-abbr/zsh-abbr.zsh
source ~/zsh-plugins/fzf-tab/fzf-tab.plugin.zsh
PROMPT=' %F{blue}%~ %F{green}%# > %f'

# Zsh History Configurations
HISTFILE="$HOME/.zsh_history"
HISTSIZE=200                 
SAVEHIST=200                 
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_REDUCE_BLANKS
setopt CORRECT
setopt HASH_LIST_ALL
setopt interactivecomments
HYPHEN_INSENSITIVE="true"

DEJA_HIGHLIGHT_STYLE='fg=110'
DEJA_CYCLE_KEY='^[[Z' 
eval "$(deja init zsh)"
eval "$(~/zsh-plugins/zsh-patina/zsh-patina activate)"
