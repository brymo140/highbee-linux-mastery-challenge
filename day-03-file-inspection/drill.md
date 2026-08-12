# Day 3 Practice Drill

## Task

I picked /var/log/apt/history.log to view using cat and i looked through it with less. I used 'head -n 15 /var/log/apt/history.log' to see the first 15 lines of its contents while i also used 'tails -n 15 /var/log/apt/history.log'to check the last 15 lines of the contents of the file. I counted the lines of the contents of the file with 'wc -l'. After that, i checked the file type using 'file' and also the metadata of the file using 'stat'. 

## Commands I ran

cat /var/log/apt/history.log
less /var/log/apt/history.log
head -n 15 /var/log/apt/history.log
tail -n 15 /var/log/apt/history.log
wc -l /var/log/apt/history.log
file /var/log/apt/history.log
stat /var/log/apt/history.log
