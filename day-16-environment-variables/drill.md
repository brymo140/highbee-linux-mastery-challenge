# Day 16 Practice Drill

## Task
I set a temporary envitonment variable, confirmed it exists, unset it and then i added a directory to my PATH for the current session only and i proved the shell can find a script inside it.

## Commands I ran
export MY_CAR="Dodge Copperhead"
echo $MY_CAR
printenv MY_CAR
unset MY_CAR
echo $MY_CAR
mkdir ~/testbin
cd ~/testbin
echo 'echo "Success! The shell found me!"' > hellobox
chmod +x hellobox
hellobox
export PATH=$PATH:$(pwd)
