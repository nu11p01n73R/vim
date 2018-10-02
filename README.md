**Vim Configurations**

This repo is used to track my vim configurations. 

The repo also contains the working vimrc file, which
can be moved to the home folder.

Plugins are managed using the native capablities in vim.

**Installation**

```
$ git clone https://github.com/nu11p01n73R/vim.git ~/.vim
$ cd .vim
$ make
```

**Pre installation**

For the airline status bar to look beautiful as in screenshots, 
we have to install [powerline-fonts](https://github.com/powerline/fonts)
Once installed change the font and non-ASCII font in the iterm2
to the one you need. 

**Key Mappings**

- `C-t` to toogle display of NERDTree
- `C-j` next in buffer
- `C-k` prev in buffer
- `C-l` list buffers

**Custom Commands**

- `Tab n` Change tab to n spaces.
- `Tr ` Toggle displaying relative number

**Loading of plugins**


All plugins in `pack/dist/start` are loaded on startup.

The following packages are loaded only when required,
- syntastic
- YouCompleteMe
- nerdtree

To load the package, the `packadd` command can be used like,

```
:packadd syntastic
```

The following command aliases are present in vimrc for easy loading,
```
Pn      nerdetree
Py      YouCompeteMe
Ps      Syntastic
```
