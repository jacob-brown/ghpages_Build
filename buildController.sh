#!/bin/sh

# functions
echoBorder()
{
    title="| $1 |"
    edge=$(echo "$title" | sed 's/./=/g')
    echo "$edge"
    echo "$title"
    echo "$edge"
}


# locations
JEKYLL_LOC=$1
BUILD_LOC=$2

# main
echoBorder "commit messages"
echo "this will apply to the build and site repos"
read -p "> " MSG

echoBorder "building jekyll site"
cd $JEKYLL_LOC
bundle exec jekyll build  -d $BUILD_LOC

echoBorder "commit and push build repo"
git add .
git commit -m "$MSG"
git push

echoBorder "commit and push site repo"
cd $BUILD_LOC

git add .
git commit -m "$MSG"
git push
