#!/bin/bash
echo "Hello World" > test.txt
echo "Berry Good" >> test.txt
echo "Kein Problem" >> test.txt
echo "Apple Tart" >> test.txt

cat test.txt

tr o O < test.txt

cat test.txt > newtest.txt
cat newtest.txt

echo "Appended Content" >> newtest.txt
cat newtest.txt

# redirect STDERR - /dev/null is a black hole
cat filenotfound.ghost 2>> newtest.txt
cat newtest.txt

cat test.txt >> newtest.txt
cat newtest.txt

# search how many lines contain Hello
grep Hello test.txt | wc -l

# search and save to new file
grep Hello test.txt | wc -l | tee keep.txt
cat keep.txt

# cleanup
rm -i $(ls *txt)
