### Managing User Passwords
Passwords are stored in /etc/shadow instead of /etc/passwd as passwd has r perm for other, meaning anyone can read this file. Even though password hashes are stored, this would leave them vulnerable to rainbow table attacks.

#### Example: Creating a New User
- sudo useradd -md /home/newUser -s /bin/bash newUser
- -md option creates a user home dir
- -s specifies the user's shell
- Can specify account expiration date with: -e YYYY-MM-DD and -f [no. of days] to secure account after expiration

### Fields in /etc/shadow
- view a shadow entry with: sudo getent shadow [userName]
- e.g. newUser:g2748kJS'#:18831:3:60:7:::
1. Username
2. Password Hash: !! or ! = no pass set, ! or * = cannot login, ! before pass hash = account locked
3. Last pass change date (epoch format)
4. Min days between pass changes
5. Days until pass change is required
6. Days of warning before pass change required
7. Days until account is deactivated after pass expires
8. Account expiration date (epoch)
9. Special flag (reserved for future use)

### Password Commands

#### Changing Passwords
- sudo passwd userName (will be prompted to change password, sudo isn't needed for own account)

#### View Password Info in a more Readable Format
- sudo passwd -S userName
- e.g. newUser P 08/14/2021 0 99999 7 -1
- Name, P for pass is set, date of last pass change, no days between changes, no pass changes required, 7 days warning, -1 means pass inactive field is disabled

#### View Password Age Info in Readable Format
- sudo chage -l userName
- sudo chage userName cmd gives you prompts for changing a user's pass age info

#### Lock and Unlock Accounts
- sudo passwd -l newUser (lock, L in passwd -S)
- sudo passwd -u newUser (unlock)
