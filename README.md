dotfiles
===

This includes a shell script and some configurations to manage dotfiles.



Usage
---

1. Place dotfiles directory to home.
2. ``bash ~/dotfiles/update.sh`` to place dotfiles under dotfiles directory to home directory.

When edit dotfiles(e.g. ~/.bashrc) under home, ``dotup`` to backup them to dotfiles directory.


Option
---

### for auth

Create ~/dotfiles/.secret for authentications and write informations(id,pw,etc).

### avoids conflicts with other's dotfiles

If other users may exist in the same environment, write "signature" in dotfiles.
Default is "oceansatealaska"(it's mine!).
Please replase it with your own string for all dotfiles and update.sh.
It avoids to overwrite your backups by someone's dotfiles.



TODO
---

Simplify signature scheme
1. Get uid executing update.sh
2. Compare dotfiles with uid when setup and backup
