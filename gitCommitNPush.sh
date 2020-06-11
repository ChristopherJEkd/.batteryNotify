#!/bin/bash
# To Commit & Push using git




# Installing git ###############################################################
#~ 
#~ sudo apt-get update 
#~ sudo apt-get install git
#~ git --version
#~ git config --global user.email "christopherj.ekd@gmail.com"
#~ git config --global user.name "ChristopherJEkd"
#~ git config --list
#~ nano ~/.gitconfig
#~ ls
#~ ls -a
#~ rm ..gitconfig.swp 
#~ nano ~/.gitconfig
#~ whereis git




# Initializing for Commit & Push ###############################################
#~ 
#~ cd StudioProjects/ContactExIm\ Xtra/
#~ ls
#~ git init
#~ git add .
#~ # Adds the files in the local repository and stages them for commit. To unstage a file, use 'git reset HEAD YOUR-FILE'.
#~ git commit -m "First commit"
#~ # Commits the tracked changes and prepares them to be pushed to a remote repository. To remove this commit and modify the file, use 'git reset --soft HEAD~1' and commit and add the file again.
#~ git remote add origin https://github.com/ChristopherJEkd/ContactExIm-Xtra.git
#~ # Sets the new remote
#~ git remote -v
#~ # Verifies the new remote URL
#~ git push origin master
#~ # Pushes the changes in your local repository up to the remote repository you specified as the origin




# Commit & Push Samples ########################################################
#~ 
#~ git add .
#~ # Adds the file to your local repository and stages it for commit. To unstage a file, use 'git reset HEAD YOUR-FILE'.
#~ git commit -m "modified existing file - Bug.txt"
#~ # Commits the tracked changes and prepares them to be pushed to a remote repository. To remove this commit and modify the file, use 'git reset --soft HEAD~1' and commit and add the file again.
#~ git push origin master
#~ 
#~ 
#~ git add .
#~ git commit -m "re-organizing dir"
#~ git push origin master
#~ 
#~ 
#~ cd StudioProjects/ContactExIm\ Xtra/
#~ git add .
#~ git commit -m "git commands as .sh file"
#~ git push origin master
#~ man echo 




#~ # Updates were rejected because the remote contains work that you do
#~ # SOLUTION #
#~ git remote add origin https://github.com/ChristopherJEkd/.batteryNotify.git
#~ # pull those changes
#~ git pull origin master
#~ # or optionally, 'git pull origin master --allow-unrelated-histories' 
#~ # if you have initialized repo in github and also committed locally
#~ #
#~ # now, push your work to your new repo
#~ git push origin master




# Script Starts Here ###########################################################
#~ 

git add .

echo -e -n "\n\n\n\n"
echo -n "Enter the commit message: "
read commitMessage
git commit -m "$commitMessage"

echo -e -n "\n\n\n\n"
read -e -p "Enter the name of the branch: " -i "master" branch
git push origin "$branch"

echo -e -n "\n\n\nEnter any letter to exit window\n"
read toExit
