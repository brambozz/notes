# Notes

A simple note taking shell script.

## Installation

1. Clone this repository
2. `chmod a+rx notes`
3. Symlink to e.g. `/usr/local/bin/notes`

## Intended basic use

Calling `notes` without any arguments should create a new file in 
~/.notes, corresponding to the current date. If such a file already
exists, it will open it.
The notes file is opened in `$EDITOR`.

## Features to be implemented

+ Tags
+ Open notes of previous date
+ Optionally open in pager

