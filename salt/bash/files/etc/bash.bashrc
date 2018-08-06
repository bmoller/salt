#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

if (( $EUID == 0 ))
then
    export PS1="\[$(tput setaf 1)\]\h \[$(tput bold)\]\w\[$(tput sgr0)\]\n# \[$(tput sgr0)\]"
else
    export PS1="\[$(tput setaf 2)\]\u@\h \[$(tput bold)\]\[$(tput setaf 1)\]\W\[$(tput sgr0)\]\n$ \[$(tput sgr0)\]"
fi

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

eval    "$(dircolors -b /etc/dircolors)"

alias   egrep="egrep --color=auto"
alias   grep="grep --color=auto"
alias   ls="ls --color=auto --group-directories-first --quoting-style literal"
