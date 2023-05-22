terminator(){
    echo 'Terminate configuration'
    kill $PPID
    exit 1
}

trap 'terminator' SIGINT

echo "Start to install several analyzing tools"

choice='n'

# Update and upgrade images
echo "Do you want to update and upgrade ubuntu? [y/n(default)]"
read choice

if [ "${choice}" == 'y' ]; then
    echo "sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove"
    sudo apt update && sudo apt -y upgrade && sudo apt -y autoremove
else
    echo "Skip the update and upgrade process"
fi

# Install essential applications
echo "sudo apt install build-essential vim git wget curl exuberant-ctags cscope"
sudo apt install build-essential vim git wget curl exuberant-ctags cscope

# Change configurations
echo "cp ./mkcscope.sh ~/"
cp ./mkcscope.sh ~/

choice='n'
echo "Do you want to install ripgrep and setup configurations for ripgrep? [y/n(default)]"
read choice

if [ "${choice}" == 'y' ]; then
    # Install ripgrep
    echo "sudo apt install ripgrep"
    sudo apt install ripgrep

    echo "cp ./.ripgreprc ~/"
    cp ./.ripgreprc ~/

    echo "Setup configurations for ripgrep"
    cat ~/.bashrc ./ripgrep.conf > ./.bashrc && mv ./.bashrc ~/

    source ~/.bashrc
fi

echo "Done"
