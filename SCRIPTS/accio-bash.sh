ACCIO="/Users/pat.depuydt/Documents/ACCIO-SOURCE"
ACCIOGITHUB="git@github.com:PatrickDePuydt/Accio-Source.git"
alias accio-source="cd /Users/pat.depuydt/Documents/ACCIO-SOURCE"
alias cleanup="rm -rf .git .gitignore README.md DESIGN CHECKLISTS EMAIL DEV sublime-snippets SCRIPTS"


ACCIO_SCRIPTS_PATH="/Users/pat.depuydt/Documents/ACCIO-SOURCE/SCRIPTS"
alias accio-test="$ACCIO_SCRIPTS_PATH/test.sh"

# accio-init() {
# 	/Users/pat.depuydt/Documents/ACCIO-SOURCE/SCRIPTS/accio-init.sh
# }


accio-init() {
	source ~/.zshrc
	TICKETNUMBER="$1"
	JOBDESCRIPTION="$2"
	git clone $ACCIOGITHUB ./$DATE-_$TICKETNUMBER-$JOBDESCRIPTION
	echo "New Day Added 📂"
	cd ./$DATE-_$TICKETNUMBER-$JOBDESCRIPTION
	cleanup
	echo "Repo Cleaned 🍃"
	echo alias $TICKETNUMBER=\"cd $(pwd)\" >> ~/.zshrc
	source ~/.zshrc
	echo "Alias added ⚡"
	echo "Good Copy, Ready to Rock 💪"
	sublime ./ADMIN/_Notes.md
}



accio-dev() {
	cp -r $ACCIO/DEV .
	echo "Dev Structure Deployed 💻"
}


accio-email() {
	cp -r $ACCIO/EMAIL .
	cp ADMIN/_Notes.md .
	rm -rf ADMIN EMAIL
	mkdir IMAGES
	sublime _Notes.md .
	echo "Email Structure Deployed 📨"
}

accio-design() {
	cp -r $ACCIO/DESIGN .
	open .
	echo "Design Structure Deployed 🎨"
}

accio-checklists() {
	cp -r $ACCIO/CHECKLISTS .
	echo "Checklists Structure Deployed 📝"
}