# configure history.
HISTSIZE=1000
SAVEHIST=10000
setopt HIST_SAVE_NO_DUPS INC_APPEND_HISTORY

# set history file to `cwd`/.history.
HISTFILE=${PWD}/.history

# hook into `cd` and load the history.
chpwd() {
  [[ $PWD = $OLDPWD ]] || fc -Pp ${PWD}/.history
}
