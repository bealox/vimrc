CURRENT_DIR=$(pwd)

die() {
	echo "bye bye"
	exit 1
}

checkFileExist() {
	if [ -f $HOME/.vimrc ]; then
		read -p "Overriding the existing vimrc file?[yn]" answer
		if [[ $answer = y ]]; then
			ln -fs $CURRENT_DIR/vimrc $HOME/.vimrc
			echo finished..
			exit 0
		else
			die
		fi
	fi
}
echo installing vimrc from $CURRENT_DIR to $HOME
checkFileExist
