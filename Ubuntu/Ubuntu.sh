#!/bin/shell



# ---- repository --------
sudo mkdir ~/workspace
sudo mkdir ~/workspace/temp
sudo timedatectl set-local-rtc true
sudo update-grub
sudo chmod 777 /etc/apt/sources.list

# 22.04
echo \
"deb http://mirrors.sdu.edu.cn/ubuntu/ jammy main restricted universe multiverse
deb http://mirrors.sdu.edu.cn/ubuntu/ jammy-security main restricted universe multiverse
deb http://mirrors.sdu.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse" > /etc/apt/sources.list

# 20.04
echo \
"deb http://mirrors.sdu.edu.cn/ubuntu/ focal main restricted universe multiverse
deb http://mirrors.sdu.edu.cn/ubuntu/ focal-security main restricted universe multiverse
deb http://mirrors.sdu.edu.cn/ubuntu/ focal-updates main restricted universe multiverse" > /etc/apt/sources.list


# config apt: add repository
sudo add-apt-repository ppa:obsproject/obs-studio
sudo add-apt-repository ppa:gerardpuig/ppa
sudo add-apt-repository ppa:dawidd0811/neofetch
sudo add-apt-repository ppa:webupd8team/atom
sudo add-apt-repository ppa:yannubuntu/boot-repair
sudo add-apt-repository ppa:plushuang-tw/uget-stable
sudo apt-get update
sudo apt-get upgrade


# config git
git config --global user.name "orgaworl"
git config --global user.email orgaworl@outlook.com
git config --global http.proxy 127.0.0.1:7890
git config --global https.proxy 127.0.0.1:7890


# ----命令行软件----

sudo apt install \
cmake git gcc gcc-multilib g++ gdb nasm python3 automake autoconf build-essential clang  \
aria2 curl uget wget fzf  \
net-tools openssh-server openssl sqlmap zmap nmap foremost  \
bat cpuid cpufetch vim neovim neofetch nvtop ranger w3m fd-find tree thefuck tmux \
zsh zip unzip unrar unzip p7zip \
libpcap-dev \
docker docker-compose \
mysql-server sagemath texlive \
tlp tlpui tlp-rdw \
lldb lld llvm \
smartmontools \
tldr \
snapd \





# -------------图形化软件---------------
sudo apt install \
atom \
apt-transport-https \
boot-repair \
caffeine \
chrome-gnome-shell \
duf \
flameshot \
guake \
gparted \
geogebra \
gnome-tweaks \
mpv \
obs-studio \
plank \
qbittorrent \
!shutter \
steam \
tilix \
tmux \
terminator \
ubuntu-cleaner \
wireshark \
virtualbox \
wine \
pycharm \
pycharm-jre \
flameshot \
obsidian \
smartgit \
glances \
gparted \

# ------------------------------------------------




# config fd-find 
ln -s $(which fdfind) ~/.local/bin/fd


# config zsh 
chsh -s /bin/zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt install powerline fonts-powerline
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
p10k configure
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions


# install neovim 0.9
sudo wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
sudo tar xzvf nvim-linux64.tar.gz
sudo mv nvim-linux64 /usr/local/nvim
sudo ln -s /usr/local/nvim/bin/nvim /usr/bin/nvim

# install font here 

# config lazyvim 
sudo git clone https://github.com/LazyVim/starter ~/.config/nvim
sudo rm -rf ~/.config/nvim/.git


# install code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code


# the fuck config
pip3 install you-get
sudo apt-get install python3-setuptools
sudo aptitude install python3-setuptools
pip3 install you-get thefuck
echo "eval \"$(thefuck --alias fuck)\"" >> ~/.bashrc
source ~/.bashrc


# final check
sudo apt-get install --fix-broken
sudo apt-get autoremove
sudo apt-get update
sudo apt-get upgrade
sudo apt-get autoremove
