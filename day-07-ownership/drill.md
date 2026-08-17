# Day 1 Practice Drill

## Task
I created a shared folder and apply the SGID bit so the new files inherit its group. I also audit the whole system for unexpected SUID binaries.

## Commands I ran
touch
ls -l
find / -perm /4000 2>/dev/null
