#!/bin/sh

XCODE_USER_DATA_PATH=~/Library/Developer/Xcode/UserData
SYSTEM_TYPE=$(uname)
FONT_AND_COLOR_THEME_DIR=$XCODE_USER_DATA_PATH/FontAndColorThemes/

echo "### Begin update ..."
if [ $SYSTEM_TYPE == "Darwin" ]; then
	cp -v emacs.idekeybindings "$XCODE_USER_DATA_PATH/KeyBindings/"
	mkdir -p $FONT_AND_COLOR_THEME_DIR
	cp -v Default_C2.dvtcolortheme "$FONT_AND_COLOR_THEME_DIR"
fi
echo "### End"
