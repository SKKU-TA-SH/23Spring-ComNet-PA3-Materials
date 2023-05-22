echo "Setup packages for debian linux"
sudo ./tools/debian-setup.sh --install-all

echo "Install glib2"
sudo apt install libglib2.0-dev

echo "Install gcrypt"
sudo apt install libgcrypt-dev

echo "Install CARES"
sudo apt install libc-ares-dev

echo "Install speexDSP"
sudo apt install libspeex-dev libspeexdsp-dev
