# Enable programmable completion features
if [ -f /etc/bash_completion ]; then
  source /etc/bash_completion
fi

# Default editor
export EDITOR=emacs_term

# Avoid succesive duplicates in the bash command history
export HISTCONTROL=ignoredups

# Append commands to the history every time a prompt is shown,
# instead of after closing the session.
PROMPT_COMMAND='history -a'

# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

# ssh key
if [ -z "$SSH_AUTH_SOCK" ] ; then
   eval `ssh-agent -s`
   ssh-add
fi
