dnf update: This is like apt update but for Fedora, RHEL, or Amazon Linux systems. It refreshes the package list so the system knows what updates are available.
dnf install: Installs a new package on those same RHEL family systems, the equivalent of apt install.
dnf remove: Uninstalls a package on RHEL family systems.
dnf search: Searches for a package by keyword before installing it.
yum install: The older package manager that came before dnf, still used on some older RHEL/CentOS systems, does basically the same job.
rpm -qa: Lists every package currently installed on an RPM based system, similar to dpkg -l on Ubuntu.
snap install: Installs a self contained app that bundles its own dependencies, so it works the same way across almost any Linux distro.
add-apt-repository: Adds a new external software source (a PPA) so apt can find packages that aren't in the default repositories.
dpkg -i: Manually installs a .deb file you already downloaded yourself, instead of pulling it from a repository.
pip / npm install: Installs a package for Python (pip) or Node.js (npm) specifically, separate from the operating system's own package manager.
