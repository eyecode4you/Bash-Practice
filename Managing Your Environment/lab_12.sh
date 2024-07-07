#!/bin/bash
# view env vars with set, env, and printenv (can add less pager to properly view)
set
env
printenv

# view specific env vars
echo $LOGNAME
echo $BASH_VERSION
echo $GROUPS
printenv HISTFILE
printenv HOSTNAME
printenv LANG
echo $LC_ALL
echo $LD_LIBRARY_PATH
echo $TZ
printenv UID
printenv PATH
printenv PWD
echo $PS1
echo $PS2

# modify shell prompt, confirm, and check shell level
PS1 = "New Shell Prompt: "
echo $PS1
echo $SHLVL

# enter a subshell
bash # our eset PS1 var won't carry over
echo $SHLVL # will increment from prev.
exit # back to prev. shell level, new prompt returns

# export PS1 into subshell
export PS1="NewShellPrompt: "
bash
echo $SHLVL
exit
