sudo apt install python3 python3-gi python-gobject meson xdotool libinput-tools gettext
sudo gpasswd -a $USER input
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install
sudo ./libinput-gestures-setup install
libinput-gestures-setup start
libinput-gestures-setup autostart
git clone https://gitlab.com/cunidev/gestures
cd gestures
meson build --prefix=/usr
ninja -C build
sudo ninja -C build install