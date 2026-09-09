find -name: This command is used to search for files or folders that matches a specific name we are looking for. (e.g., find . -name "*.conf") 
find -type: This is used to filter our search strictly by the type of the file or folder we are looking for (e.g. find . -type d) 'f' is for files while 'd' is for directories. So in this case, it means search bring the result for all directories on this directory. 
find -size: This command finds files based on how big they are. (e.g. find / -size +1G) which means search for any file that is greater than 1 gigabytes on this computer. 
find -mtime:This is used to search for files by the time they are last modified. (e.g find . -mtime -2) which means to find any file in this current directory that is modified 2 days ago.
find -perm: This is used to find files based on the system permission bits. (e.g find . -perm 777) which means to find all files that anyone can read, write and execute. 
locate:     This command is more direct but still limited compared to find commands, why? It instantly finds files anywhere on the system by searching a pre-build background database. So it is more faster than find commands but it won't show brand-new fies created after the database was last updated. (e.g. locate main.tf)
updatedb:   This command helps out the 'locate' command limitation by  updating the background database so it will be able to find the latest files created. So because it scans the entire system, this commad will be run with the admin priviledge using 'sudo' (e.g sudo updatedb).
du:         This command "du" stands for Disk Usage ehich lists every subfolder in the targeted directory as well as its size in raw blocks which can flood the terminal.
du -sh:	    This is the one that helps to provide a clean sumary of a folder's total size in a human readable format. so, running 'du -sh' means print exactly how much total space the current folder occupies.
df -h:	    This commad means Disk Free and it displays a human readable table of all connected hard drives and storage partitions. It shows their total size, how much space is used, how much is available, and their percenage capacity.


NOTE: The 'find' command searches the computer storage drive in real time. it requires a starting location like '.' for the current folder or '/' for the whole computer folled by the filter. 
