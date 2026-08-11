- pwd — prints the current working directory
- ls — lists files/folders in the current directory
- ls -l — long listing format, shows permissions, owner, size, date
- ls -a — shows hidden files (dotfiles) too
- ls -la — combines long format and hidden files
- ls -lh — long format with human-readable sizes (K, M, G instead of bytes)
- cd /path — change directory using an absolute path
- cd .. — move up one directory
- cd ~ — go to your home directory
- cd - — jump back to the previous directory you were in
mkdir — creates a new, empty directory (folder) in your current locationmkdir -p path/to/folder — creates parent directories automatically if they do not exist yet
touch — creates a new, empty file or updates the timestamp of an existing file
cp  — copies a file from the source path to the destination path
cp -r — copies a directory and all of its contents recursively
mv — moves or renames a file or directory depending on the path
rm— deletes a file permanently from the file system
rm -r — deletes a directory and all of its contents recursivename — forcefully deletes a directory and its contents without prompting for confirmation
rmdir — removes an empty directory (fails if the folder contains any files)
