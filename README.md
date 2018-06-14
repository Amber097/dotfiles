dotfiles
===

Usage
---

1. Place "dotfiles directory" under home
2. (optional) Create ~/dotfiles/.secret for authentications (id,pw,etc)
3. ``bash ~/dotfiles/update.sh``

When edit dotfiles(e.g. ~/.bashrc) under home, ``dotup`` to backup them to dotfiles directory.

If other users exist in your environment, write "signature" in dotfiles.
Default is "oceansatealaska", please write your sig in all dotfiles including update.sh.
