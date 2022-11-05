parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\[$(tput setaf 166)\]\u";
PS1+="\[$(tput setaf 7)\] in ";
PS1+="\[$(tput setaf 71)\]\W";
PS1+="\[$(tput setaf 7)\] at ";
PS1+="\[$(tput setaf 200)\]\$(parse_git_branch) -> ";
PS1+="\[$(tput sgr0)\]";
export PS1; 

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/manasuma/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/manasuma/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/manasuma/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/manasuma/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

