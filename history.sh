# Increase history size
HISTSIZE=10000
HISTFILESIZE=10000

# Skip duplicates and lines starting with a space
HISTCONTROL=ignoreboth

# Exclude noisy/trivial commands
HISTIGNORE="&:cd:fg:ls:pwd:export:exit:clear:history:make:nvim"

# Append to history file on exit instead of overwriting
shopt -s histappend

# Enable Ctrl+S for forward history search (disable terminal flow control)
stty -ixon
bind '"\C-s": forward-search-history'
