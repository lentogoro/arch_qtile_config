# Update python and tools
sudo pacman -S python

sudo pacman python-pip git

sleep 3

#install yay
pacman -S --needed git base-devel #not sure what --needed is...
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

# Install Qtile dependencies
pip install cffi

pacman -Ss xf86-server xorg-apps xcffib

sleep 1

pip -m install --no-cache-dir cairocffi

pacman -S pango dbus

# Install Qtile
pip -install qtile

#Packages required to use in GUI
sudo pacman -Syy alacritty nitrogen thunar firefox geany lightdm lightdm-gtk-greeter picom lxappearance arc-gtk-theme arc-icon-theme archlinux-wallpaper

# Configure before reboot
cp /etc/X11/xinit/xinitrc to ~/.xinitrc
vim .xinitrc

# remove twm &
# remove xclock -geometry 50x50-1+1 &
# remove xterm -geometry 80x50+494+51 &
# remove xterm -geometry 80x20+494-0 &

nitrogen --restore &
picom &

# https://wiki.archlinux.org/title/Xinit#Autostart_X_at_login

# "startx" in terminal
# qtile start in terminal
