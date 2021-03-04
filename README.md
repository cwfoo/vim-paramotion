# vim-paramotion
Vim global plugin that allows the `{` and `}` paragraph motions to move to
lines that only contain whitespace, not just completely empty lines.

This plugin aims to preserve all other default paragraph motion behavior.
Please file a bug report if you notice a difference in other paragraph motion
behavior when using this plugin.


## Installation
### Installation using Vim's package management
On Unix-like systems:
```sh
mkdir -p ~/.vim/pack/git-plugins/start/
cd ~/.vim/pack/git-plugins/start/
git clone https://github.com/cwfoo/vim-paramotion
```

On Windows using the "Git for Windows" Bash terminal:
```sh
mkdir -p ~/vimfiles/pack/git-plugins/start/
cd ~/vimfiles/pack/git-plugins/start/
git clone https://github.com/cwfoo/vim-paramotion
```

### Installation using Vundle
You can install this plugin using [Vundle](https://github.com/VundleVim/Vundle.vim)
by adding the following line to your configuration and running `:PluginInstall`:
```vim
Plugin 'cwfoo/vim-paramotion'
```

### Installation using vim-plug
You can install this plugin using [vim-plug](https://github.com/junegunn/vim-plug)
by adding the following line to your configuration and running `:PlugInstall`:
```vim
Plug 'cwfoo/vim-paramotion'
```


## Documentation
See [doc/vim-paramotion.txt](doc/vim-paramotion.txt).


## License
All files in this project are licensed under the BSD Zero Clause License (0BSD)
(see [LICENSE](LICENSE)).


## Contributing
Bug reports, suggestions, and patches should be submitted on GitHub:
https://github.com/cwfoo/vim-paramotion
