#!/bin/bash
# Create a New Ticket

# GUI Feedback
echo "⚡   👓   Accio... DOCUMENTATION!!! "

# Prmopt for Input
read -p "⚡   Vertical: " VERTICAL
read -p "⚡   Ticket Number: " TICKET_NUMBER
read -p "🐫   File Name Title: " FILE_NAME_TITLE
read -p "⚡   Title: " TICKET_TITLE

# Variables
TODAYSDATE=$(date +%m-%d-%y) 
TICKET_NAME=$VERTICAL-$TICKET_NUMBER
#PATHTOTICKETDIR="$(pwd)/$TODAYSDATE-$VERTICAL-$TICKET_NUMBER-$FILE_NAME_TITLE"
DIRECTORY_SLUG="$TODAYSDATE-$VERTICAL-$TICKET_NUMBER-$FILE_NAME_TITLE"
RELATIVE_PATH="$(pwd)/$DIRECTORY_SLUG"

# Make Directory
mkdir $DIRECTORY_SLUG

# Insert Link
echo "#[$TICKET_NAME: $TICKET_TITLE](https://idmeinc.atlassian.net/browse/$TICKET_NAME)" >> $RELATIVE_PATH/Readme.md

# Summary
# echo "### Summary" >> $PATHTOTICKETDIR.md
# echo "***" >> ~/Desktop/$PATHTOTICKETDIR.md
# echo "&nbsp;" >> ~/Desktop/$PATHTOTICKETDIR.md

# Notes Section
# echo "### Notes" >> $PATHTOTICKETDIR.md
# echo "\`\`\`" >> $PATHTOTICKETDIR.md
# echo "\`\`\`" >> $PATHTOTICKETDIR.md

# Add Shortcut to ZshRC File
# echo "alias $TICKET_NUMBER=\"cd $RELATIVE_PATH\"" >> ~/.zshrc

# Open it up
code $RELATIVE_PATH