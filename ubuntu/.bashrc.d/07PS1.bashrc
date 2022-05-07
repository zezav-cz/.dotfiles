if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}'
    PS1+="\$?\[$(tput sgr0)\] \[${COLOR_GREEN}\]\u@\h:\[${COLOR_BLUE}\]\w\[${COLOR_RESET}\]"
    PS1+="\[${COLOR_RESET}\]"
    PS1+=' $(__git_ps1 " [%s]")\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt