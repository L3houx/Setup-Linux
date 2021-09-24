

# ------------------------ WAYLAND ------------------------
## WDisplays
sudo pacman -S meson -y
cd ~/Downloads/
git clone https://github.com/artizirk/wdisplays.git
cd wdisplays
meson build
ninja -C build
sudo ninja -C build install


# ------------------------ APPS ------------------------
## Keyboard layout
sway input keyboard xkb_layout ca:multix

## Bitwarden
sudo pacman -Sy bitwarden

## Rofi
sudo pacman -Sy rofi

## Discord
sudo pacman -Sy discord

## VSCode
sudo pacman -Sy code

## ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Keybase
sudo pacman -Sy keybase-gui
