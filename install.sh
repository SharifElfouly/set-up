apt install -y nload htop vim docker.io tmux python3-pip nvidia-cuda-toolkit python3-pip libgnome2-bin gnome-screensaver curl
pip3 install torch Pillow opencv-python dirly
snap install jupyter
snap install code --classic

# nvidia-docker2
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update
sudo apt-get install -y nvidia-docker2
sudo systemctl restart docker

# vim stuff
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
add-apt-repository ppa:tatokis/ckb-next
apt-get update
apt install ckb-next
    
sh ln_dotfiles.sh
ubuntu-drivers autoinstall
reboot
