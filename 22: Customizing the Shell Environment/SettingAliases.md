- alias cmd by itself will show all aliases used on system
- alias -p will do the same
- alias [cmd name] will show alias for that cmd
- unalias [cmd name] will remove alias

- Any aliases set/unset won't persist when logging out of shell. To save changes, you have to set them in an environment file.

### Which environment files contain alias settings?
Changes based on system. A few places to check:
- grep alias /etc/profile
- grep alias /etc/bashrc
- /etc/profile.d

### Alias a bash script
- alias [new name]="bash [location of script]"
- alias mycmd="bash $HOME/myscript.sh"
