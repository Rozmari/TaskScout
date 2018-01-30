##This script will auto-install TaskScout to your system, assuming you're using ZSH or Bash.

cd ~/
 
## This command creates the needed text-file.

if [ -e remind_data.txt ]; then
  echo >> remind_data.txt
fi

## This command makes the directory and clones github files.

mkdir ~/.config/TaskScout
cd ~/.config/TaskScout
wget https://raw.githubusercontent.com/Rozmari/TaskScout/master/tasks.sh
chmod +x ~/.config/TaskScout/tasks.sh

## This command appends the needed commands to common rc files.
echo "alias scout='~/.config/TaskScout/tasks.sh'" >> ~/.zshrc
echo "alias scout='~/.config/TaskScout/tasks.sh'" >> ~/.bashrc
