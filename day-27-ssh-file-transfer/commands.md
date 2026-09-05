- ssh: This is a command that is used to establish a secure, encrypted terminal connection to a remote machine (e.g., ssh ubuntu@192.168.1.50).
- ssh -p <port> <user>@<host>: This command will let you connect to a remote server using a custom network port instead of the standard default SSH port 22.
- ssh -i <path_to_private_key> <user>@<host>:  This one explicitly specifies a private identity key file (e.g., ssh -i ~/.ssh/my_key.pem ubuntu@host) to authenticate your login session instead of typing a user password. 
- ssh-keygen:  Launches an interactive prompt to generate a brand-new cryptographic keypair (a matching id_ed25519 private key and id_ed25519.pub public key) for passwordless authentication.
- ssh-copy-id: Automatically connects to a remote server and appends your public key to its authorized registry file (~/.ssh/authorized_keys). Once run, you can log into that server instantly without ever typing a password again.
- scp <source> <destination>: It stands for Secure Copy. It works like the standard cp command but safely encrypts and transfers files over a network between your local computer and a remote server (e.g., scp file.txt user@host:/var/www/). 
- sftp <user>@<host>: It launches an interactive, secure file transfer console. It allows you to log into a remote machine and use standard navigation commands (ls, cd, pwd) combined with get (to download) and put (to upload) files. 
- rsync: A highly optimized file sync utility. Unlike scp, which copies everything blindly, rsync analyzes files on both sides and only transfers the specific changes/deltas. If a transfer is interrupted, it can pick up exactly where it left off, making it ideal for large backups.
- ~/.ssh/config: This is a local user file that allows you to create easy-to-remember shortcuts for your remote servers. Instead of typing ssh -i ~/.ssh/key.pem -p 2222 admin@192.168.10.45, you can configure an alias so you only have to type ssh myserver.
- sshd_config hardening: Refers to editing the master server configuration file (/etc/ssh/sshd_config) to lock down a machine against hackers. Standard hardening steps include: 
 1. Changing the default port (Port 2222) to avoid automated scanning bots.
 2. Disabling root logins entirely (PermitRootLogin no).
 3. Completely disabling password authentication to force secure key usage (PasswordAuthentication no).
