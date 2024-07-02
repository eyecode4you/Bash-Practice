#!/bin/bash
echo $SHLVL
PS1="New Prompt: "

bash # env vars won't carry over to new subshells
echo $SHLVL
exit # we get modified PS1 back

# to carry over env var modifications to subshells, use export cmd:
PS1="New Prompt:"
export PS1
bash # prompt appearance change will carry over
echo $PS1
echo $SHLVL
exit
