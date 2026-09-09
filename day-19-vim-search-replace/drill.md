# Day 19 Practice Drill

## Task
I opened a 50 lined config file in vim and jumped straight to line 10, seached for a keyword, jumped between all matches, then i replaced every occurance of one word with another across the whole file.

## Commands I ran
vim day19test.txt
:10
/setting
n
N
:%s/setting/parameter/g
