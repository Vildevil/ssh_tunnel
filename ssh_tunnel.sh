set ssh_host=""
set ssh_username=""
set ssh_password=""
set ssh_port="443"
set ssh_localportbinding="8080"



export NO_PROXY=localhost,127.0.0.1,*.my.lan.domain
export HTTP_PROXY=localhost:$ssh_localportb

if [ ! -f /usr/bin/sshpass ]
then
    echo "SSHPass must be installed"
    sudo apt install sshpass
fi

sshpass -p $ssh_password ssh -ND $ssh_localportbinding $ssh_username\@$ssh_host -p $ssh_port



inding


echo $?