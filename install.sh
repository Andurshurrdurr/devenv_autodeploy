sudo apt update
sudo apt upgrade -y

# Essential programs apt-get
sudo apt install -y zsh git keepass2 curl wget xscreensaver

# get oh-my-zsh with wget: 
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"  

# Golang 
sudo apt install -y golang-go

### Set up gopath
mkdir -p ~/Workspace/go-workspace
mkdir -p $HOME/Workspace/go-workspace/src
mkdir -p $HOME/Workspace/go-workspace/pkg
mkdir -p $HOME/Workspace/go-workspace/bin
#echo "export GOPATH=$GOPATH:$HOME/Workspace/go-workspace:$HOME/Workspace/go-workspace/bin" >> ~/.bashrc
source ~/.bashrc

# SQLite
sudo apt install -y rlwrap sqlite3 socat

# Python:
sudo apt install -y python python-pip build-essential python-dev virtualenv

# Ansible:
sudo apt install -y ansible sshpass

# Install Peek (for gifs)
sudo apt install cmake valac libgtk-3-dev libkeybinder-3.0-dev libxml2-utils gettext txt2man

git clone https://github.com/phw/peek.git
mkdir peek/build
cd peek/build
cmake -DCMAKE_INSTALL_PREFIX=/usr -DGSETTINGS_COMPILE=OFF ..
make package

# install spotify
sudo apt install snapd
sudo snap install spotify
if ! grep -Fxq "export PATH=$PATH:/snap/bin/" ~/.profile ; then echo "export PATH=$PATH:/snap/bin/" >> ~/.profile

# Do the Xterm configuration
cp .Xresources ~/

# Awesome WM
sudo apt install -y awesome
mkdir -p ~/.config/awesome/
git clone https://github.com/peakbreaker/awesome-config.git 
mv awesome-config/rc.lua ~/.config/awesome/

# Virtualbox and Vagrant:
## First add to sources list:
#sudo ($echo "deb http://download.virtualbox.org/virtualbox/debian stretch contrib") >> /etc/apt/sources.list.d
## Next we add oracle public key
#curl -O https://www.virtualbox.org/download/oracle_vbox_2016.asc
#sudo apt-key add oracle_vbox_2016.asc
## Finally we install the programs
#sudo apt-get update
#sudo apt-get install virtualbox-5.1
#sudo apt-get install vagrant

# Atom io:
echo "Getting and installing atom.."
wget https://atom.io/download/deb -O atom.deb
sudo dpkg -i atom.deb

# Atom packages

### Preview HTML
apm install atom-html-preview
### Linter
apm install linter
### Python linter
apm install linter-python
### File icons
apm install file-icons
### Go-plus
apm install go-plus  
### Emmet
apm install emmet  

# Install 32-bit libraries for Linaro GCC
# sudo apt-get install lib32ncurses5

# Install nodejs and npm
sudo apt install -y nodejs

# Remove the atom.deb and notify user of end of installs
rm atom.deb



echo ""
echo " --------- END OF AUTOMATIC INSTALLS ---------"

# Installing and setting up compiler and IDE for ST32
echo "Proceed to install latest eclipse IDE from their website"

# Next install STLink driver - This is in the repository
echo "Log in to www.openstm32.org and download stlink_udev_rule.tar.bz2"
echo "Get latest arduino IDE from their website - https://www.arduino.cc/en/Main/Software"
echo "add shortcut to open terminal with zsh: gnome-terminal -e zsh"

# Configurations of aliases
echo "alias g='git'" >> ~/.bashrc

git config --global alias.lg1 "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
git config --global alias.aa "add --all"
git config --global alias.aap "add --all --patch"
git config --global alias.a "add"
git config --global alias.ap "add --patch"
git config --global alias.l log
git config --global alias.d diff
git config --global alias.ds "diff --staged"
git config --global alias.c "commit -e"
git config --global alias.ch checkout
git config --global alias.s status
