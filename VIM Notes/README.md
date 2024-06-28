## Useful notes on using the vi/vim text editor

#### Command Mode
- vi starts in *__command__* mode
- *__Esc__* brings you back to *__command mode__*
- *__ZZ__* saves and quits vi
- *__Arrow Keys & hjkl__* for cursor movement
- *__Shift $__* for end of line, *__Shift ^__* for start of line
- *__/__* to search forward, *__?__* to search backward, / and ? after that jumps to next/prev. matches
- *__Ctrl d__* to go halway down, *__Ctrl u__* to go halfway up

#### Insert Mode
- *__i__* brings you to insert mode

#### EX Mode
- *__:__* brings you to EX mode
- *__:wq__* and *__:x__* saves changes and quits vi
- *__:!__* performs specified execution and overides warning/protections
- *__:r [file path]__* opens the specified file within vim
- *__:set number__* displays line numbers
- *__:set ff=dos__* sets line endings to windows-style CRFL terminators, can also use *__ff=mac__* and *__ff=unix__*
