#!/bin/sh

FILE_FDC=/System/Library/Frameworks/CoreMediaIO.framework/Versions/A/Resources/VDC.plugin/Contents/MacOS/VDC
FILE_AVC=/System/Library/PrivateFrameworks/CoreMediaIOServicesPrivate.framework/Versions/A/Resources/AVC.plugin/Contents/MacOS/AVC
FILE_QTVDC=/System/Library/QuickTime/QuickTimeUSBVDCDigitizer.component/Contents/MacOS/QuickTimeUSBVDCDigitizer
FILE_CAMERA=/Library/CoreMediaIO/Plug-Ins/DAL/AppleCamera.plugin/Contents/MacOS/AppleCamera
FILE_COREMEDIA_IO=/Library/CoreMediaIO/Plug-Ins/FCP-DAL/AppleCamera.plugin/Contents/MacOS/AppleCamera

rename_files () {

	if [ -f $FILE_FDC$1 ]; then
		echo mv $FILE_FDC$1 $FILE_FDC$2
	fi
	if [ -e $FILE_AVC$1 ]; then
		echo mv $FILE_AVC$1 $FILE_AVC$2
	fi
	if [ -e $FILE_QTVDC$1 ]; then
		echo mv $FILE_QTVDC$1 $FILE_QTVDC$2
	fi
	if [ -e $FILE_CAMERA$1 ]; then
		echo mv $FILE_CAMERA$1 $FILE_CAMERA$2
	fi
	if [ -e $FILE_COREMEDIA_IO$1 ]; then
		echo mv $FILE_COREMEDIA_IO$1 $FILE_COREMEDIA_IO$2
	fi
}

set_cemera () {

	if [[ $1 == "start" ]]; then

		rename_files '.bak' ''

	elif [[ $1 == "stop" ]]; then

		rename_files '' '.bak'

	else

		echo "[start|stop]"

	fi
}

set_cemera $1
