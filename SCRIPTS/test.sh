#!/bin/bash

# Variables
ACCIOGITHUB="git@github.com:PatrickDePuydt/Accio-Source.git"
DATE=`date +%m-%d-%y`

# Inputs
TICKETNUMBER="$1"
JOBDESCRIPTION="$2"
NEW_FOLDER="$DATE-_$TICKETNUMBER-$JOBDESCRIPTION"

# Get Fresh Copy of Accio Directory Structure
# git clone $ACCIOGITHUB ./$DATE-_$TICKETNUMBER-$JOBDESCRIPTION

# Let User Know a new Folder was Added
# echo "New Folder Added 📂"

# Change Directories into the new folder
# cd $NEW_FOLDER

#rm -rf .git .gitignore README.md DESIGN CHECKLISTS EMAIL DEV sublime-snippets

# Let User Know The Folder Was Cleaned
#echo "Repo Cleaned 🍃"

#echo alias $TICKETNUMBER=\"cd $(pwd)\" >> ~/.zshrc

#source ~/.zshrc

#echo "Alias added ⚡"

#echo "Good Copy, Ready to Rock 💪"

#sublime ./ADMIN/_Notes.md

mkdir $TICKETNUMBER
cd $TICKETNUMBER

echo "Working"