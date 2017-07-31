# Dependency document - IoT DevEnv v0.1

# Essential programs apt-get
sudo apt-get install zsh git keepass2 curl wget

# get oh-my-zsh with wget:
sudo sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"  &

# Golang
sudo apt-get golang-go

### Set up gopath
mkdir -p ~/Workspace/go-workspace
mkdir -p $HOME/Workspace/go-workspace/src
mkdir -p $HOME/Workspace/go-workspace/pkg
mkdir -p $HOME/Workspace/go-workspace/bin
echo "export GOPATH=$GOPATH:$HOME/Workspace/go-workspace:$HOME/Workspace/go-workspace/bin" >> ~/.bashrc
source ~/.bashrc

# SQLite
sudo apt-get install rlwrap sqlite3 socat

# Python:
sudo apt-get install python python-pip build-essential python-dev virtualenv

## Python packages (using pip):
pip install flask packaging oauth2client redis passlib flask-httpauth
pip install sqlalchemy flask-sqlalchemy psycopg2 bleach

# Ansible:
sudo apt-get install ansible sshpass

# Virtualbox and Vagrant:
## First add to sources list:
sudo ($echo "deb http://download.virtualbox.org/virtualbox/debian stretch contrib") >> /etc/apt/sources.list.d
## Next we add oracle public key
curl -O https://www.virtualbox.org/download/oracle_vbox_2016.asc
sudo apt-key add oracle_vbox_2016.asc
## Finally we install the programs
sudo apt-get update
sudo apt-get install virtualbox-5.1
sudo apt-get install vagrant

# Ansible
## First we add to sources list
sudo ($echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main") >> /etc/apt/sources.list.d

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
sudo apt-get update
sudo apt-get install ansible

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
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

# Installing and setting up compiler and IDE for ST32
echo "Proceed to install latest eclipse IDE from their website"

# Next install STLink driver - This is in the repository
echo "Log in to www.openstm32.org and download stlink_udev_rule.tar.bz2"
echo "Get latest arduino IDE from their website - https://www.arduino.cc/en/Main/Software"
echo "add shortcut to open terminal with zsh: gnome-terminal -e zsh"
