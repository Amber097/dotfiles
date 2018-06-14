dotfiles
===

These files are my own backups and a shell script and some configurations to manage dotfiles.

TODO
---

Use symbolic links to access dotfiles

Simplify signature scheme
1. Get uid executing update.sh
2. Compare dotfiles with uid when setup and backup


Usage
---

1. Place dotfiles directory to home.
2. ``$ bash ~/dotfiles/update.sh`` to place dotfiles under dotfiles directory to home directory.

Write dotfiles you want to manage in update.sh.

If you edit dotfiles(e.g. ~/.bashrc) under home, ``$ dotup`` to backup them to dotfiles directory.
(``dotup`` is alias of update.sh defined at bashrc.)
It executes backups depending on their timestamps.

Option
---

### for auth

Create ~/dotfiles/.secret and write informations(id,pw,etc).

### avoids conflicts with other's dotfiles

If other users may exist in the same environment, write "signature" in dotfiles.
Default is "oceansatealaska"(it's mine!).
Please replase it with your own string for all dotfiles and update.sh.
It avoids to overwrite your backups by someone's dotfiles.

