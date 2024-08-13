### Access Control Modes
- Discretionary Access Control (DAC): Access based on username & group membership, owner can assign perms.
- Mandatory Access Control (MAC): Access based on defined security clearance.
- Role-Based Access Control (RBAC): Subset of MAC. Access based on defined security needs, user id, and assigned role.


### Discetionary Access Control
- Owner (user), group, and world (other)

### Groups
- A long listing (ls -l) shows a file's properties including owner and group.
- A user can be a member of multiple groups, but only one group is the primary group at a given time.
- getent passwd [username] cmd shows primary group number (fourth field).
- getent group [group number] cmd shows info of group based on its number. 
- groups cmd shows which groups a user is part of.
- id -gn cmd shows user's current group.
- newgrp [groupname] cmd changes user's current group.
