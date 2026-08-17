# Day 08: Privilege Escalation & Identity

## Phase 2 - Permissions, Ownership & Security | Day 8 of 30

## Commands covered today
See commands.md for all 10 commands with syntax and my own explanation 
of what each one does and when I would reach for it.

## What I practiced
I practiced to be able to manage user identity, administrative privileges and system auentication in linux. These commands that i learned in today's challenge is that they are used to escalate privileges to run system level tasks like when i ran (/etc/shadow) and it returns permission denied but i can bridge through using the sudo privilege. There are commands like (su) which also means switch user as it swiches the shell context to another user while (su -) swiches to the root user or another user if specified (e.g., su - highbee). it will load everything of that user as you switch to it and this form of 'su' command is the cleanest way to fully impersonate another user. Another thing that i leaned is verifying user identity using "whoami" which prints the alphanumerical username of the efective user account currently running the terminal session and 'id" which displays a detailed breakdown of the current security identity. it will print the user's real ID and the group ID and any othe group the account may currently belong to. 

## What surprised me
Nothing really surprises me about these whole set of today's batch of commands other than the way they look very basic but they are very crucial and important to know or i would say how powerfull they really are because hackers must be using these commands also to get the user identity in any system and make any decition in the system when they make use of the sudo privilege as well as using (su -) for impersonation - probably no so easy to do tho :). 

## Evidence
Screenshot or terminal transcript of the drill in evidence/.

## Related
Previous day: [day-07-ownership](https://github.com/brymo140/highbee-linux-mastery-challenge/tree/main/day-07-ownership)

Next day: [day-08-privilege-escalation]()
