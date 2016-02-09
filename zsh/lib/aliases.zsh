os="$(uname -s)"
echo $os
alias -g L=' | less'
alias -g M=' | less'
alias -g H=' | head'
alias -g T=' | tail'
alias -g G=' | grep'

alias cd..='cd ..'
alias cd/='cd /'
alias cdd='cd $(dirname $_)'
alias up=bd

alias 1='cd -'
alias 2='cd +2'
alias 3='cd +3'
alias 4='cd +4'
alias 5='cd +5'
alias 6='cd +6'
alias 7='cd +7'
alias 8='cd +8'
alias 9='cd +9'
alias dirs='dirs -v'

alias md='mkdir --parents'

# Also done by Ctrl + L.
alias cls='echo -ne "\033c"'

# Platform dependend aliases
case $os in
    "Darwin" )
        alias ls='ls -laG'
        alias grep='grep --color'
        ;;
    "CYGWIN_NT-10.0"  )
        alias ls='ls --color=auto -l --all --human-readable --group-directories'
        alias grep='grep --color=auto --ignore-case --binary-files=without-match --line-number'
        alias atom="atom.cmd"
        alias guard="guard.bat"
        alias nanoc="nanoc.bat"
        ;;
esac
