[[ -n "$_PROMPT_LOADED" ]] && return; _PROMPT_LOADED=1

# Trim the working directory in the prompt to the last 2 path components,
# displayed as "…/parent/current". Uses bash's built-in PROMPT_DIRTRIM.
PROMPT_DIRTRIM=2
# \w shows the full path (trimmed by PROMPT_DIRTRIM); \W would show only the basename.
PS1='\[\e[32m\]\w\[\e[0m\] \$ '
