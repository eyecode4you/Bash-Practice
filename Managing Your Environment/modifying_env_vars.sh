#!/bin/bash
echo $PS1
PS1="New Prompt: "

echo $PS2
PS2="New Secondary Prompt: "

echo \

EDITOR=/bin/nano
echo $EDITOR
# changes made this way aren't persistent!
