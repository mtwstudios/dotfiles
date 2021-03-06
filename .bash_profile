export EDITOR=vim

function color_my_prompt {
    ## local __user_and_host="\[\033[01;32m\]\u@\h"
    local __user_and_host="\[\033[01;32m\]\u"
    local __cur_location="\[\033[01;34m\]\w"
    local __git_branch_color="\[\033[31m\]"
    local __git_branch="\`ruby -e \"print (%x{git branch 2> /dev/null}.lines.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`"
    local __prompt_tail="\[\033[35m\]$"
    local __last_color="\[\033[00m\]"
    export PS1="$__user_and_host $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt

# bash completion for hosts that we've recently ssh'd to
complete -W "$(echo $(grep '^ssh ' .bash_history | sort -u | sed 's/^ssh //'))" ssh

source .aliases
source git-completion.bash
