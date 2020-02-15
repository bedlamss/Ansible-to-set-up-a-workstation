#!/bin/bash -uxe
#
# Prepare system 
#

install_pip () {
        curl https://bootstrap.pypa.io/get-pip.py | $SUDO $PYTHON_BIN
        $SUDO pip install setuptools -U
        $SUDO pip install ansible -U
        $SUDO pip install passlib -U
        $SUDO pip install bcrypt -U
}

prepare_ubuntu() {
        $SUDO apt update -y
        $SUDO apt dist-upgrade -y
        $SUDO apt install software-properties-common curl git mc facter python3 python3-apt aptitude -y
        [ $(uname -m) == "aarch64" ] && $SUDO apt install gcc python3-dev libffi-dev libssl-dev make -y

        PYTHON_BIN=/usr/bin/python3
        install_pip
        $SUDO pip install python3-apt -U

        set +x
        echo
        echo "   Ubuntu ready for next step."
        echo
        ansible --version
}

prepare_debian() {
        $SUDO apt update -y
        $SUDO apt dist-upgrade -y
        $SUDO apt install curl git mc vim facter python3 python3-apt aptitude -y
        [ $(uname -m) == "aarch64" ] && $SUDO apt install gcc python3-dev libffi-dev libssl-dev make -y

        PYTHON_BIN=/usr/bin/python
        install_pip
        $SUDO pip install python-apt -U

        set +x
        echo
        echo "   Debian Sytem ready for next step."
        echo
        ansible --version
}

usage() {
        echo
        echo "Linux distribution not detected."
        echo "Use: ID=[ubuntu|debian] prepare_system.sh"
        echo "Other distributions not yet supported."
        echo
}

if [  -f /etc/os-release ]; then
        . /etc/os-release
elif [ -f /etc/debian_version ]; then
        $ID=debian
fi

# root or not
if [[ $EUID -ne 0 ]]; then
  SUDO='sudo -H'
else
  SUDO=''
fi

case $ID in
        'ubuntu')
                prepare_ubuntu
        ;;
        'debian')
                prepare_debian
        ;;

        *)
                usage
        ;;
esac