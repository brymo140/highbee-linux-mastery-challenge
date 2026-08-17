sudo: runs a single command with elevated (root) privileges
sudo -i: starts a full root login shell
sudo -u: runs a command as a specific user instead of root
sudo !!: re runs the last command, this time with sudo in front of it
sudo -l: lists what commands your account is allowed to run with sudo
visudo: safely opens the sudoers file for editing, checking syntax before saving
su: switches to another user account within the current session
su -: switches user and also loads that user's full environment, like a fresh login
whoami: prints the username you are currently logged in as
id: shows your user ID, group ID, and all groups you belong to
