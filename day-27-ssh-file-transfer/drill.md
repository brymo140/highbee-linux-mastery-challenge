# Day 27 Practice Drill

## Task
Generate an SSH key pair, copy the public key to a remote host, connect without a password, then securely copy a file to and from that server.

## Commands I ran
-  sudo systemctl enable --now ssh
-  ssh-keygen
- ssh-copy-id newhire@HIGHBEE
- ssh newhire@HIGHBEE
- echo "test file for scp" > transfertest.txt
- scp transfertest.txt newhire@HIGHBEE:~/received.tx
-  scp transfertest.txt highbee@HIGHBEE:~/sendbackto-theboss.tsx
