![TaskScout](https://my.mixtape.moe/njlbiv.png)
# TaskScout v2.0 - A Small Alternative to TaskWarrior with Auto-Reminding
*Forked from Nojusr, main dev Rozmari.*

*TaskScout* seeks to provide an alternative to TaskWarrior in the form of a small, minimalist 
task-management and reminder system following the [Unix 
Philosophy](https://en.wikipedia.org/wiki/Unix_philosophy). 

## FEATURES - 

- Automated timestamps.
- List clearing.
- Minimalist listing.
- Notify-send/notificationdaemon support.
- Package-like installation w/ auto-alias creation in .zshrc and .bashrc
- Modular design for easy user-extension.
- 

## TODO - 
[ ] - Add autoexecute w/ option for deciding time in cli.

[ ] - Daemon Mode.

[ ] - File switching and hastebin-uploading. 

# NOTES
This application was written entirely in bash; it uses normal tools provided by default by the Linux kernel, allowing it to have a low memory and hard-drive footprint. There's also very good documentation in the Luna script which allows for user-generated modules and extreme extensibility of the script. The application treats itself as a package by 'installing' itself in the ~/.config directory and making its very own alias-entries in .zshrc and .bashrc.

Don't knock it for the simplicity of its design; It gets the job done, quickly, and with scout's honor.
