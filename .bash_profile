
for file in ~/.{path,completions,bash_prompt,bashrc,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUPSTREAM="verbose"

PS1="$RED\$(date +%H:%M) \w$YELLOW\$(__git_ps1) $GREEN\$ \[\e[0m\]"

# Colorize the Terminal
export CLICOLOR=1

# Fix OS X Lion locale issues in terminal
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

HISTFILESIZE=2500
