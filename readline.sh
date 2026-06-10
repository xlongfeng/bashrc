# Increase history size
HISTSIZE=10000
HISTFILESIZE=10000

# Skip duplicates and lines starting with a space
HISTCONTROL=ignoreboth

# Exclude noisy/trivial commands
HISTIGNORE="&:cd:fg:ls:pwd:export:exit:clear:history:make:nvim"

# Append to history file on exit instead of overwriting
shopt -s histappend

# Sync history across bash instances instantly:
# - history -a: append new commands to the history file
# - history -c: clear in-memory history
# - history -r: reload history from file (picks up other sessions' commands)
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND; }history -a; history -c; history -r"

# Enable Ctrl+S for forward history search (disable terminal flow control)
stty -ixon
bind '"\C-s": forward-search-history'

# Bind Ctrl+P / Ctrl+N to history search backward/forward
bind '"\C-p": history-search-backward'
bind '"\C-n": history-search-forward'

# Disable bell
bind 'set bell-style none'
