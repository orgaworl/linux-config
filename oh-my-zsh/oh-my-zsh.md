# 安装

```shell
sudo apt install zsh
chsh -s /bin/zsh
sudo apt install wget
sudo apt install git
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt install powerline fonts-powerline
vim ~/.zshrc

git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
p10k configure
```

```shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

plugins=(
    zsh-syntax-highlighting
    zsh-autosuggestions
    git
    autojump
    extract
)
```
