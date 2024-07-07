#!/bin/bash
echo "Hello World" > test.txt
echo "Kein Problem" >> test.txt
echo "Berry Good" >> test.txt
echo "Apple Sauce" >> test.txt
cat test.txt

# sort alphabetically
sort test.txt

# delimit and display field
cut -d' ' -f1 test.txt

# split file into new files, xaa, xab
split -l2 test.txt

# display octal code of txt file
od test.txt

# change all o into O
tr o O < test.txt
sed 's/o/O/g' test.txt

# find line containing word
grep -i Apple test.txt

# create new file and paste content
echo "Pasted Content" > newtest.txt
paste newtest.txt test.txt
