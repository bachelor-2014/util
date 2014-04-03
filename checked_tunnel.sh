if [[ $# -lt 2 ]] ; then
    echo "Please provide from and to port as arguments. From is remote, to is local"
    exit -1
fi

createTunnel() {
    /usr/bin/ssh -l root -f -N -R $1:localhost:$2 splotbot@cstp.dk
    if [[ $? -eq 0 ]]; then
        echo Tunnel created successfully
    else
        echo An error occurred creating a tunnel $?
    fi
}
## Run the 'ls' command remotely.  If it returns non-zero, then create a new connection
/usr/bin/ssh -p $1 splotbot@cstp.dk ls
if [[ $? -ne 0 ]]; then
    echo Creating new tunnel connection
    createTunnel $1 $2
fi
