# Day 15 Practice Drill

## Task
I provisioned a complete new team member account (user, groups, password) and installed the three tools they need for their role, in a single documented sequence.


## Commands I ran
sudo useradd -m -G sudo,devs newhire
sudo passwd newhire
id newhire
getent passwd newhire
sudo apt update && sudo apt install -y git curl htop
dpkg -l | grep -E "git|curl|htop"
apt list --installed | grep -E "git|curl|htop"
