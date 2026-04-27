sudo snap remove --purge firefox
sudo snap remove --purge snap-store
sudo snap remove --purge gnome-3-38-2004
sudo snap remove --purge gtk-common-themes
sudo snap remove --purge snapd-desktop-integration
sudo snap remove --purge bare
sudo snap remove --purge core20 version
sudo snap remove --purge snapd

sudo apt remove --purge --autoremove snapd gnome-software-plugin-snap -y
sudo rm -rf /var/cache/snapd/ 
sudo rm -rf /var/snap/
sudo rm -rf /var/lib/snapd/
rm -rf ~/snap/
sudo rm -rf /snap/

sudo tee /etc/apt/preferences.d/no-snap.pref << 'EOF'
Package: snapd
Pin: release a=*
Pin-Priority: -10
EOF

apt-cache policy snapd
