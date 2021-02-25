# Mac Home

Storage of files for Mac home directory, previously synced between computers using Dropbox.

Using Dropbox, the files on each of my Macs were symlinked to these files, so whenever I changed, for example, my .bash_aliases on one computer, it would be updated on the other.

This also made it easy to maintain Vim syntax files and quickly load necessary settings whenever I moved to a new machine.

## Setup:

If install.sh cannot be run, use "chmod +x install.sh"

Then just run "./install.sh"

In iTerm2, in the Preferences->General tab, tell it to load settings from your $MACHOME folder

## Notes

Over time, I've been trying to make this more generalized, as I also use it to get up and running on Linux machines as well.
At some point I should formalize this, update the name of the repo, ensure all commands work properly across different types of machines, etc.
