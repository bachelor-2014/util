#(cd ../code/splotbot/client && grunt build)
scp -r ../code/splotbot/client/app/* root@`splotip.sh`:/www/pages
