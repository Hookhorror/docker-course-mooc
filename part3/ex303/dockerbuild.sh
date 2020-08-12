#!/bin/bash

# USERNAME=$1
# PASSWORD=$2
# REPONAME=$3
# echo "Username: "
# read USERNAME

# echo "Password: "
# stty_orig=$(stty -g) # save original terminal setting.
# stty -echo           # turn-off echoing.
# read -r PASSWORD     # read the password
# stty "$stty_orig"    # restore terminal setting.
# echo ""

# echo "Repo name: "
# read REPONAME

git clone https://github.com/Hookhorror/$REPONAME
cd $REPONAME
docker build -t jonikiviluoto/$REPONAME .
echo $PASSWORD | docker login --username $USERNAME --password-stdin
docker push jonikiviluoto/$REPONAME
