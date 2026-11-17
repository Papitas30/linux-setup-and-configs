# zsh_unplugged - https://github.com/mattmc3/zsh_unplugged
#
# A simple, fast, minimalist Zsh plugin management function in ~30 lines of code.
#
# Usage:
# ZPLUGINDIR=${ZDOTDIR:-~}/plugins
# source $ZPLUGINDIR/zsh_unplugged/zsh_unplugged.zsh
# repos=(
#   # Regular plugins, always updated
#   'zsh-users/zsh-completions'
#   'ajeetdsouza/zoxide'
#
#   # Plugins pinned to a particular SHA
#   'zsh-users/zsh-syntax-highlighting@5eb677bb0fa9a3e60f0eff031dc13926e093df92'
#   'zsh-users/zsh-autosuggestions@85919cd1ffa7d2d5412f6d3fe437ebdbeeec4fc5'
#   'zsh-users/zsh-history-substring-search@87ce96b1862928d84b1afe7c173316614b30e301'
# )
# plugin-load $repos
#

##? Clone a plugin using its github repo and (optionally) commit sha,
##? identify its init file, source it, and add it to your fpath.
plugin-load () {
  local plugin repo plugdir initfile initfiles=()
  for plugin in $@; do
    repo="$plugin"
    clone_args=(-q --depth 1 --recursive --shallow-submodules)
    plugdir=$ZPLUGINDIR/${repo:t}
    initfile=$plugdir/${repo:t}.plugin.zsh
    if [[ ! -d $plugdir ]]; then
      echo "Cloning $repo..."
	  git clone "${clone_args[@]}" https://github.com/$repo $plugdir
      plugin-update
    fi
    if [[ ! -e $initfile ]]; then
      initfiles=($plugdir/*.{plugin.zsh,zsh-theme,zsh,sh}(N))
      (( $#initfiles )) || { echo >&2 "No init file found '$repo'." && continue }
      ln -sf $initfiles[1] $initfile
    fi
    fpath+=$plugdir
    (( $+functions[zsh-defer] )) && zsh-defer . $initfile || . $initfile
  done
}

function plugin-update {
  for d in $ZPLUGINDIR/*/.git(/); do
    echo "Updating ${d:h:t}..."
    command git -C "${d:h}" pull --ff --recurse-submodules --depth 1 --rebase --autostash
  done
  plugin-compile
}

function plugin-compile {
  autoload -U zrecompile
  for f in $ZPLUGINDIR/**/*.zsh{,-theme}(N); do
    zrecompile -pq "$f"
  done
}
