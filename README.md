#dotsetup
##WARNING: This will overwrite:
* __~/.vimrc__
* __~/.gitconfig__
* __~/.vim/colors__
* __~/.vim/bundle__
* __~/.bashrc__

##First Steps:
* install git
* install vim
* install curl 

```bash
sudo apt-get install git vim curl -y
```

##execute:
```bash
git clone https://github.com/philmaweb/dotsetup.git
./dotsetup/setup.sh
```
Solarized colorscheme, Vundle and VIM-Addons will be installed 

##To install virtualenvwrapper use the following commands:

```bash
#install virtualenv
sudo pip install virtualenv
#make directory to hold the virtualenvs, refrences in .bashrc
mkdir ~/.virtualenvs
#install virtualenvwrapper
sudo pip install virtualenvwrapper
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
