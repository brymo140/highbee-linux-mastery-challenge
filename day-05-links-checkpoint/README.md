# Day 05: Paths, Links & Tree Structures

## Phase 1 checkpoint - File Navigation & Filesystem Mastery | Day 5 of 30

## Commands covered today
See commands.md for all 10 commands with syntax and my own explanation 
of what each one does and when I would reach for it.

## What I practiced
I learned to visualize directory structures, create shortcuts (symbiotic and hard links), dissect path strings, and use an advanced folder navigation memory system. whith what i learned, i created a symbiotic link that lins to a directory "/var/log/apt/history.log" and then tried to get the real path of the link file that was created with "realpath". I also printed a level 3 visualized tree map of /etc with "three -L". I make use of "pushd and popd".

## What surprised me
What surprises me is the level 3 three stucture that i printed out. i thouth it supposed to be of three brach only untill i ran the command and it printed a long response that i can't get the head or the tail of untill i piped it with less so that it will be scrollable and for me to see the whole of it and where the head started from exactly. "tree -L 3 /etc | less"

## Evidence
Screenshot or terminal transcript of the drill in evidence/.

## Related
Previous day: [day-04-filesystem-search](https://github.com/brymo140/highbee-linux-mastery-challenge/tree/main/day-04-filesystem-search/)
Next day: [day-06-permissions](https://github.com/brymo140/highbee-linux-mastery-challenge/tree/main/day-06-permissions)
