#!/bin/bash
# BRE: ^ $ [] * .
grep home /etc/passwd
grep nologin$ /etc/passwd
grep ^nobody /etc/passwd

# ERE: + ? | ()
grep -E "(nologin$|bash$)" /etc/passwd # "" is shell quoting - protects special characters like |
egrep "(nologin$|bash$)" /etc/passwd # deprecated

# stream editor (sed)
sed 's/:/$/' /etc/passwd # replaces first : in each line with $
sed 's/:/$/g' /etc/passwd # replaces all : with $
sed '/^$/d' /etc/passwd # remove all empty lines

# using find
find / -name passwd 2> /dev/null # starting from root, find passwd and send errors to black hole
find / -maxdepth 3 -name passwd 2> /dev/null # only search within 3 subdirs
find / -regex .*passwd 2> /dev/null

# using locate
locate somefile.txt
updatedb # update mlocate.db
