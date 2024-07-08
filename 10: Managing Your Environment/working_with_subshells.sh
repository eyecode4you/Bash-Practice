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

# can also use export before env var definition:
export PS1="New New Prompt: "
bash
exit

# can also add export after definition with ;
PS1="New New New Prompt: "; export PS1
bash
exit
