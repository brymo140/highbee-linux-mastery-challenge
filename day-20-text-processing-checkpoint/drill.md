# Day 20 Practice Drill

## Task
I built one pipeline that filters for 'error' entries, extracts the timestamp column, sorts the results, and then removes duplicates, all in a single chained command from a raw log file.

## Commands I ran
- grep -i error day20log.txt
- cut -d' ' -f1,2
- sort
- uniq
- grep -i error day20log.txt | cut -d' ' -f1,2 | sort | uniq
