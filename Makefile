START_DIR = pack/dist/start
OPT_DIR = pack/dist/opt


.PHONY: install clean


install: $(START_DIR)/vim-airline $(START_DIR)/vim-airline-themes \
	$(START_DIR)/base16-vim $(START_DIR)/vim-fugitive \
	$(OPT_DIR)/syntastic $(OPT_DIR)/YouCompleteMe \
	$(OPT_DIR)/nerdtree $(HOME)/.vimrc


$(START_DIR)/vim-airline:
	git clone https://github.com/vim-airline/vim-airline $(START_DIR)/vim-airline


$(START_DIR)/vim-airline-themes:
	git clone https://github.com/vim-airline/vim-airline-themes $(START_DIR)/vim-airline-themes


$(START_DIR)/base16-vim:
	git clone https://github.com/chriskempson/base16-vim $(START_DIR)/base16-vim


$(START_DIR)/vim-fugitive:
	git clone https://github.com/tpope/vim-fugitive $(START_DIR)/vim-fugitive


$(OPT_DIR)/syntastic:
	git clone https://github.com/vim-syntastic/syntastic $(OPT_DIR)/syntastic


$(OPT_DIR)/YouCompleteMe:
	git clone https://github.com/Valloric/YouCompleteMe $(OPT_DIR)/YouCompleteMe
	cd $(OPT_DIR)/YouCompleteMe \
		&& git submodule update --init --recursive \
		&& ./install.py
	

$(OPT_DIR)/nerdtree:
	git clone https://github.com/scrooloose/nerdtree.git $(OPT_DIR)/nerdtree


$(HOME)/.vimrc: 
	ln -s $(CURDIR)/vimrc $(HOME)/.vimrc


clean:
	rm -rf pack
	# rm $(HOME)/.vimrc	
