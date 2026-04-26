sudo snap remove --purge firefox -y
sudo snap remove --purge snap-store -y 
sudo snap remove --purge gnome-3-38-2004 -y 
sudo snap remove --purge gtk-common-themes -y 
sudo snap remove --purge snapd-desktop-integration -y 
sudo snap remove --purge bare -y
sudo snap remove --purge core20 version -y
sudo snap remove --purge snapd -y

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
