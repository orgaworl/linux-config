#!/bin/shell


# config system
mkdir "~/workspace"
mkdir "~/workspace/temp"
mkdir "~/software"
sudo timedatectl set-local-rtc true
sudo update-grub
sudo pacman-mirrors -i -c China -m rank

# config git
git config --global user.name "orgaworl"
git config --global user.email "orgaworl@outlook.com"
git config --global http.proxy 127.0.0.1:7890
git config --global https.proxy 127.0.0.1:7890

# install nutstore
# wget https://www.jianguoyun.com/static/exe/installer/nutstore_linux_dist_x64.tar.gz -O /tmp/nutstore_bin.tar.gz
# mkdir -p ~/.nutstore/dist && tar zxf /tmp/nutstore_bin.tar.gz -C ~/.nutstore/dist
# sh ~/.nutstore/dist/bin/install_core.sh

# install wps-cn
sudo pacman -S base-devel
yay -S wps-office-cn
#yay -S wps-office-mui-zh-cn
#sudo pacman -S ttf-wps-fonts
yay -S freetype2-wps

# install font
yay -S nerd-fonts-complete-mono-glyphs
#pacman -S  noto-fonts-cjk noto-fonts-extra
fc-cache -fv

# --------- pacman install -----------------------


sudo pacman -S \
base-devel yay \
cmake git gcc g++ gdb python jdk8-openjdk automake autoconf build-essential llvm clang lldb lld\
aria2 curl uget wget you-get fzf \
net-tools openssh-server openssl sqlmap zmap nmap foremost \
bat cpuid cpufetch vim neovim neofetch nvtop ranger w3m fd-find fd tree thefuck tmux \
snapd \
zsh zip unzip unrar unzip p7zip \
docker docker-compose \
sagemath texlive mysql-server boot-repair \

glances
gparted
libpcap-dev
lynx
mpv
obsidian
smartgit
steam
smartmontools
tlp tlpui tlp-rdw
tldr
virtualbox
wine
pycharm
pycharm-jre
flameshot




# --------- yay install -----------------------
yayList=(
"baidunetdisk-bin"
"clash-for-windows-chinese"
"clash-for-windows-bin"
"clash-verge"
"clash-verge-bin"
"drawio"
"debtap"
"deepin-wine-wechat"
"lolcat"
"motrix"
"mailmaster"
"snipaste"
"microsoft-edge-stable"
"!nutstore-experimental"
"notable-bin"
"1ttf-wps-fonts"
"timeshift"
"qqmusic-bin"
"utools"
"visual-studio-code-bin"
"xmind"
"lolcat"
);
for i in ${yayList[@]};
do
    yay -S $i ;
done;


#---------------- snap config -----------------
sudo systemctl enable --now snapd.socket


# ------------------tlp config-------------------------


sudo systemctl enable tlp.service
sudo systemctl enable tlp-sleep.service


# -----------------------------------------------

#install netease music
cd ~/software
git clone https://aur.archlinux.org/netease-cloud-music.git
cd netease-cloud-music
makepkg -si
cd ~/software


# config clashVerge
sudo chmod 666 /etc/environment
echo "
http_proxy=http://127.0.0.1:7890/
https_proxy=http://127.0.0.1:7890/
ftp_proxy=http://127.0.0.1:7890/
HTTP_PROXY=http://127.0.0.1:7890/
HTTPS_PROXY=http://127.0.0.1:7890/
FTP_PROXY=http://127.0.0.1:7890/
" >> /etc/environment





# config zsh
# chsh -s /bin/zsh
# sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# sudo apt install powerline fonts-powerline
# git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
# p10k configure
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions





# config lazyvim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git







