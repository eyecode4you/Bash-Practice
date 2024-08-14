### Managing User Accounts
Creating and modifying user accounts require su privileges.

### Files References When Creating Accounts
- /etc/default/useradd: Determines $HOME dir base location & User's shell
- /etc/login.defs: Manages whether a $HOME dir is created, password change management, user and group ID management
- If configured, /etc/skel/ (skeleton) files are copied to $HOME dir
