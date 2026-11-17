export PATH="$HOME/.local/bin/:$PATH"
export EDITOR="micro"
export ANV_DEBUG=video-decode,video-encode

alias sudo='sudo '
alias nano="micro"
alias ls="ls -A"
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

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
setopt HASH_LIST_ALL
setopt interactivecomments
HYPHEN_INSENSITIVE="true"

# Plugins Config
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu no
ABBR_USER_ABBREVIATIONS_FILE=~/.abbr
ABBR_SET_EXPANSION_CURSOR=1
DEJA_HIGHLIGHT_STYLE='fg=110'
DEJA_CYCLE_KEY='^[[Z' 

# Plugins
ZPLUGINDIR=$HOME/zsh-plugins
source $ZPLUGINDIR/zsh-unplugged/zsh-unplugged.zsh
repos=(
	romkatv/zsh-defer
	mattmc3/ez-compinit
	olets/zsh-abbr
 	Aloxaf/fzf-tab
 	Giammarco-Ferranti/deja
 	michel-kraemer/zsh-patina
)
plugin-load $repos
