cat: It pastes the entire contents of that is pointed to all at once. 
less: This allows to be able to view the file contents in a scrollable way. especially when the contents are of plenty lined.
head: It displays the first ten lines of a file by default. 
head -n <number>: It displays a speciic number of lines from the begning of the contents of the file. (e.g., head -n 5 log.txt) 
tail: It displays the very last ten lines of a file by default.
tail -f: This command follows the file in real time. which means, it will automatically stream new lines of contents as they were written to the file. 
wc: This will display the number of lines, number of words and the total byte count. 
wc -l: It shows only the number of lines inside the file.
file: This is used to examine the internal data structure of a file to tell its true file type (the file type of /var/log/apt/history.log on my system is  ASCII text).
stat: Provides a detailed breakdown of a fil's metadata. including the exact creation and modification timestamps, ownership, size and so on. 
