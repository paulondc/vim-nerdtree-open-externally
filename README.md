<p align="center">
  <img src="data/logo.png?v=1"/>
</p>

## Introduction
This is fairly simple plugin for [vim](https://neovim.io/) that provides a way of launching the current item in [NERDTree](https://github.com/scrooloose/nerdtree) with the default desktop application associated with it. This is done by pressing the key `e` on the item you want to open externally (it works with files and directories). Feel free to override the default key mapping to your preferable one via:

```vim
let g:nerdTreeOpenExternallyMap = "e"
```

This plugin supports Linux, MacOS and Windows.

<p align="center">
  <img src="data/clip.gif?v=1"/>
</p>

## Installation

Make sure you have [NERDTree](https://github.com/scrooloose/nerdtree) installed locally.

#### [VimPlug](https://github.com/junegunn/vim-plug)

Add the configuration below after [NERDTree](https://github.com/scrooloose/nerdtree) plugin in your vim configuration (neovim: `~/.config/nvim/init.vim`, vim: `~/.vimrc`):

```vim
Plug 'paulondc/vim-nerdtree-open-externally'
```

Then run the following in Vim:

```vim
:source %
:PlugInstall
```

#### [NeoBundle](https://github.com/Shougo/neobundle.vim)
Add the configuration below after [NERDTree](https://github.com/scrooloose/nerdtree) plugin in your vim configuration (neovim: `~/.config/nvim/init.vim`, vim: `~/.vimrc`):

```vim
NeoBundle 'paulondc/vim-nerdtree-open-externally'
```

Then run the following in Vim:

```vim
:source %
:NeoBundleInstall
```

## Issues
vim-nerdtree-open-externally development discussions and bug reports are collected on [Issues](https://github.com/paulondc/vim-nerdtree-open-externally/issues)

## Acknowledgements
vim-nerdtree-open-externally was initially based on [vim-nerdtree_plugin_open](https://github.com/woelke/vim-nerdtree_plugin_open)

## License
vim-nerdtree-open-externally is free software; you can redistribute it and/or modify it under the terms of the MIT License
