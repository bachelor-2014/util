createTunnel() {
    /usr/bin/ssh -l root -f -N -R 2222:localhost:22 splotbot@cstp.dk
    if [[ $? -eq 0 ]]; then
        echo Tunnel created successfully
    else
        echo An error occurred creating a tunnel $?
    fi
}
## Run the 'ls' command remotely.  If it returns non-zero, then create a new connection
/usr/bin/ssh -p 2222 splotbot@cstp.dk ls
if [[ $? -ne 0 ]]; then
    echo Creating new tunnel connection
    createTunnel
fi
