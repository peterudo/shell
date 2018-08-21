test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

if type brew 2&>/dev/null; then
	for completion_file in $(brew --prefix)/etc/bash_completion.d/*; do
		source "$completion_file"
	done
fi

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
