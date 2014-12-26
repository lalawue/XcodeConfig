#!/bin/sh

XCODE_USER_DATA_PATH=~/Library/Developer/Xcode/UserData
SYSTEM_TYPE=$(uname)

echo "### Begin update ..."
if [ $SYSTEM_TYPE == "Darwin" ]; then
	cp -v emacs.idekeybindings "$XCODE_USER_DATA_PATH/KeyBindings/"
	cp -v Default_C2.dvtcolortheme "$XCODE_USER_DATA_PATH/FontAndColorThemes/"
fi
echo "### End"
