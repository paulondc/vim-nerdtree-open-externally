<p align="center">
  <img src="data/logo.png?v=1"/>
</p>

## Introduction
This is fairly simple plugin for [NERDTree](https://github.com/scrooloose/nerdtree) that provides a way of launching the current item in [NERDTree](https://github.com/scrooloose/nerdtree) with the default desktop application associated with it. This is done by pressing the key `e` on the item you want to open externally. Feel free to override the default key mapping to your preferable one via:

```vim
let g:nerdTreeOpenExternallyMap = "e"
```

This plugin is compatible with linux, macos and windows.

<p align="center">
  <img src="data/clip.gif?v=1"/>
</p>

## Installation

Make sure you have [NERDTree](https://github.com/scrooloose/nerdtree) installed locally

#### VimPlug

Add the configuration below after the [NERDTree](https://github.com/scrooloose/nerdtree) plugin in your vim configuration:

```vim
Plug 'paulondc/vim-nerdtree-open-externally'
```

Then run the following in Vim:

```vim
:source %
:PlugInstall
```

#### NeoBundle
Add the configuration below after the [NERDTree](https://github.com/scrooloose/nerdtree) plugin in your vim configuration:

```
NeoBundle 'paulondc/vim-nerdtree-open-externally'
```

Then run the following in Vim:

```vim
:source %
:NeoBundleInstall
```

## Issues
vim-nerdtree-open-externally development discussions and bug reports are collected on [Issues](https://github.com/paulondc/vim-nerdtree-open-externally/issues)

## Licensing
vim-nerdtree-open-externally is free software; you can redistribute it and/or modify it under the terms of the MIT License
