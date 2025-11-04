#!/bin/bash
cd /home/$USER && git clone https://github.com/claudemods/claudemods-burgundy-konsole
cp -r /home/$USER/claudemods-burgundy-konsole/claudemods-burgundy.colorscheme /home/$USER/.local/share/konsole
cp -r /home/$USER/claudemods-burgundy-konsole/claudemods-burgundy.profile /home/$USER/.local/share/konsole
sed -i '/^\[Desktop Entry\]/,/^\[/ s/^DefaultProfile=.*/DefaultProfile=claudemods-burgundy.profile/' ~/.config/konsolerc
rm -rf /home/$USER/claudemods-burgundy-konsole
sleep 1
killall konsole 
nohup konsole &
