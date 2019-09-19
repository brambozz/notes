#!/bin/sh

# Check if XDG_CONFIG_HOME is set
if [ -z $XDG_CONFIG_HOME ]
then
	echo xdgnotset!
	XDG_CONFIG_HOME=$HOME/.config
fi

# Definitions
notesdir=$XDG_CONFIG_HOME/notes

# Check if notes directory exists
if [ ! -d $notesdir ]
then
	echo "Notes directory does not yet exist."
	echo "Creating $notesdir"
	mkdir $notesdir
fi

## Edit note of current day
today=`date +%Y%m%d`
notefile=$notesdir/$today

# Check if note already exists
if [ -f $notefile ]
then
	$EDITOR $notefile
else
	touch $notefile
	$EDITOR $notefile
fi
