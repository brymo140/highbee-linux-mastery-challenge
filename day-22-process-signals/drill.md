# Day 22 Practice Drill

## Task
Start a long-running command in the background, suspend it, resume it in the background, then start a second one that survives you logging out, using nohup.

## Commands I ran
- sleep 500 &

- jobs

- fg %1

- bg %1

- nohup sleep 600 &

- kill

- kill -9

- kill -HUP %1

- pkill sleep

- killall sleep

