##This script will auto-install TaskScout to your system, assuming you're using ZSH or Bash.

cd ~/ 

## This command makes the directory and clones github files.

cd ~/.config
git clone https://www.github.com/Rozmari/TaskScout
chmod +x ~/.config/TaskScout/*
rm ~/.config/TaskScout/install.sh

## This command appends the needed commands to common rc files.
echo "alias scout='~/.config/TaskScout/Luna'" >> ~/.zshrc
echo "alias scout='~/.config/TaskScout/Luna'" >> ~/.bashrc
