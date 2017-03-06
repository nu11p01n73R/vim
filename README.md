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

**Custom Commands**

- `Tab n` Change tab to n spaces.
- `Tr ` Toggle displaying relative number

**Loading of plugins**

The plugins that need to be availabe on vim startup are placed in 

```
~/.vim/bundle/start
```

These plugins will be loaded on startup. Any other plugin that is 
required in placed in 

```
~/.vim/bundle
```

These plugins are not loaded by default. There are functions which 
load them up to runtime when required. Currently YCM and NERDTree are
loaded only when required.

The following commands are available, which call the functions to activate
the required plugin
```
:Startnt load NERD tree
:Startycm load You Complete Me
```
