### Managing Groups
- groups cmd shows your group memberships (only one group is the primary group at a given time)
- sudo groups [user] shows another user's group memberships
- id -gn cmd shows a user's primary group
- getent passwd [user] cmd shows user's primary group id
- getent group [group id] cmd shows group name from id
- getent group [group name] cmd shows members of specified group
- Change current group with newgrp [group name], user must be associated with specified group

### /etc/group Records
- Group info is stored in /etc/group
- e.g. wheel:x:27:newUser
1. Group name (unique)
2. Password (x denotes it's stored in /etc/gshadow)
3. Group ID
4. Group members

### Adding a New Group
- sudo groupadd newGroup
- verify with: getent group newGroup

#### Adding a User to a Group
- sudo usermod -aG newGroup userName
- verify with: sudo groups userName

#### Modifying Groups
Change a group's name (maintains user memberships):
- sudo groupmod -n newName oldname

#### Deleting a Group
- sudo groupdel newGroup
