#dotsetup
##WARNING: This will overwrite:
* __~/.vimrc__
* __~/.vim/colors__
* __~/.vim/bundle__

##First Steps:
* install git
* install vim
* install curl 
* install xclip 
* install meld 
* upgrade pip 
* generate new ssh key 

```bash
sudo apt-get install git vim curl xclip meld -y
#upgrade pip
pip install --uprade pip
#generate new ssh Key
ssh-keygen -t rsa -b 4096 -C "your_email@gmail.com"
# start the ssh-agent in the background
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
#Copies publickey into clipboard
xclip -sel clip < ~/.ssh/id_rsa.pub
```
Add the SSH key to your GitHub account

##execute:
```bash
git clone git@github.com:philmaweb/dotsetup.git
./dotsetup/setup.sh
```
Solarized colorscheme, Vundle and VIM-Addons will be installed 

##To install virtualenvwrapper use the following commands:

```bash
#install virtualenv
pip install virtualenv
#make directory to hold the virtualenvs, refrences in .bashrc
mkdir ~/.virtualenvs
#install virtualenvwrapper
pip install virtualenvwrapper
#Set WORKON_HOME to your virtualenv dir
export WORKON_HOME=~/.virtualenvs
```

##use virtualenvwrapper like so:
```bash
#create new virtualenv with custom python interpreter
mkvirtualenv myproject -p /usr/local/lib/python2.7.11/bin/python
#use venv
workon myproject
#stop using venv
deactivate
```
