if [ "$color_prompt" = yes ]; then
        PS1+=' $(__git_ps1 " [%s]")\$ '
fi