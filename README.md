**Vim Configurations**

This repo is used to track my vim configurations. 

The different plugins that are used with the vim
are added as git submodules.

The repo also contains the working vimrc file, which
can be moved to the home folder.

This uses [pathogen](https://github.com/tpope/vim-pathogen)
as the package manager.

**Installation**

Clone the repo and run `setup.sh`.

```
$ git clone https://github.com/nu11p01n73R/vim.git ~/.vim
$ cd ~/.vim
$ ./setup.sh
```

Everything is fine if it echoes nothing.

**Pre installation**

For the airline status bar to look beautiful as in screenshots, 
we have to install [powerline-fonts](https://github.com/powerline/fonts)
Once installed change the font and non-ASCII font in the iterm2
to the one you need. 

**Key Mappings**

- `nt` to toogle display of NERDTree
- `cp` to display CtrlP
- `gr` run the current Go file

**Custom Commands**

- `Tab n` Change tab to n spaces.

**Todo**

- It would be nice if it has YouCompleteMe as well.
