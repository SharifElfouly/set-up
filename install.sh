apt install -y nload htop vim docker.io tmux python3-pip nvidia-cuda-toolkit python3-pip libgnome2-bin gnome-screensaver curl
pip3 install torch Pillow opencv-python dirly
snap install jupyter
snap install code --classic

# vim stuff
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
sh ln_dotfiles.sh
ubuntu-drivers autoinstall
reboot
