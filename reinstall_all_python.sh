#!/bin/bash
# Many hours of research after a failed manual install of python later, this question got the solution http://askubuntu.com/questions/270011/broken-python-2-7-after-manually-building-and-installing-python-2-6
# let's reinstall everything with python
for pkg in `dpkg --get-selections | egrep -v 'deinstall' | egrep python | awk '{print $1}'`; do  apt-get -y --force-yes install --reinstall $pkg ; done
echo "Thank you for reinstalling your native Python!"
