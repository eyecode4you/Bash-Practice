### Managing User Accounts
Creating and modifying user accounts require su privileges.

### Files References When Creating Accounts
- /etc/default/useradd: Determines $HOME dir base location & User's shell
- /etc/login.defs: Manages whether a $HOME dir is created, password change management, user and group ID management
- If configured, /etc/skel/ (skeleton) files are copied to $HOME dir

### Commands
- You can view some default new user settings with: useradd -D
- ! On some distros, useradd has been replaced with adduser
- View skeleton files with: ls -a /etc/skel/
- To see if HOME dir is created for new users: grep CREATE_HOME /etc/login.defs

#### Creating a new user
- useradd newUserName
- getent passwd newUserName (verify user is created)
- ls -a /home/newUserName (verify home dir exists)

### Files Modified When Creating Accounts
- /etc/passwd (contains account info)
- /etc/shadow (contains account password info)
- /etc/group (contains group info)

### Searching User Account Info in passwd
- grep ^newUserName /etc/passwd
- getent passwd newUserName (search the passwd database)

#### Fields in /etc/passwd Records
E.g. newUserName:x:1001:1000:New User Name:/home/newUserName:/bin/bash
1. Username
2. Password (x if stored in /etc/shadow)
3. UID
4. GID
5. Comment Field (Usually contains full name)
6. Home dir
7. Account shell (/bin/nologin or /bin/false if not allowed to login)
