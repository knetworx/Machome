# Mac Home

Storage of files for Mac home directory, previously synced between computers using Dropbox.

Using Dropbox, the files on each of my Macs were symlinked to these files, so whenever I changed, for example, my .bash_aliases on one computer, it would be updated on the other.

This also made it easy to maintain Vim syntax files and quickly load necessary settings whenever I moved to a new machine.

## Setup:

_TODO: Put this in an actual install script to simplify the process_

_TODO: In the install script, just go ahead and symlink everything, so the home dir looks normal_

_TODO: Add proper git submodule commands for Vim bundles (Can the update --init be used without arguments? Need to try this on an uninitialized box to see if it works)_

```bash
# From machome dir
MACHOME=`pwd -P`
pushd ~
ln -s $MACHOME/.bashrc .bashrc
ln -s $MACHOME/.profile .profile
ln -s $MACHOME/.vim .vim
ln -s $MACHOME/.vimrc .vimrc
git submodule update --init .vim/bundle/Vundle.vim/
git submodule update --init .vim/bundle/vc.vim/
cp $MACHOME/.gitconfig_example ~/.gitconfig
pushd ~/.ssh
popd
popd
```
