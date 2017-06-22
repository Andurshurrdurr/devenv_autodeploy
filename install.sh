# Dependency document - IoT DevEnv v0.1

# Essential programs apt-get
sudo apt-get install zsh git keepass2 curl

# get oh-my-zsh with wget:
#sudo sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"  &
echo "add shortcut to open terminal with zsh: gnome-terminal -e zsh"

# Golang
sudo apt-get golang-go

### Set up gopath
mkdir -p ~/Workspace/go-workspace
mkdir -p $HOME/Workspace/go-workspace/src
mkdir -p $HOME/Workspace/go-workspace/pkg
mkdir -p $HOME/Workspace/go-workspace/bin
echo "export GOPATH=$GOPATH:$HOME/Workspace/go-workspace:$HOME/Workspace/go-workspace/bin" >> ~/.bashrc
source ~/.bashrc

# Python:
sudo apt-get install python python-pip build-essential python-dev virtualenv 

# Ansible:
sudo apt-get install ansible sshpass

# Virtualbox and Vagrant:
## First add to sources list:
echo "deb http://download.virtualbox.org/virtualbox/debian stretch contrib" >> /etc/apt/sources.list.d
## Next we add oracle public key
curl -O https://www.virtualbox.org/download/oracle_vbox_2016.asc
sudo apt-key add oracle_vbox_2016.asc
## Finally we install the programs
sudo apt-get update
sudo apt-get install virtualbox virtualbox-dkms
sudo apt-get install vagrant

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

# Installing and setting up compiler and IDE for ST32
echo "Proceed to install latest eclipse IDE from their website"

# Next install STLink driver - This is in the repository
echo "Log in to www.openstm32.org and download stlink_udev_rule.tar.bz2"

# Install 32-bit libraries for Linaro GCC
sudo apt-get install lib32ncurses5
