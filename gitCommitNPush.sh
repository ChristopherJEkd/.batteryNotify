#!/bin/bash
# To Commit & Push using git
#

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
