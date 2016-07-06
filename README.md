python-compilers.vim
====================

Just a python compilers for VIM

Installation
------------

As usual, you can install it with your prefered VIM plugin manager (like [Plug](https://github.com/junegunn/vim-plug)
or [Vundle](https://github.com/gmarik/vundle)).
If you want to install it by yourself, just copy the `compiler` folder to your `~/.vim` folder.

compilers
---------
* flake8

Usage
-----

```vim
:compiler flake8
:make
```
vim-dispatch integration
------------------------
I'm strongly recommend to use compilers with [vim-dispatch](https://github.com/tpope/vim-dispatch).
For example to run a asynchronous `flake8` check in every buffer save set in your `vimrc`:

```vim
augroup python
    au!
    autocmd FileType python compiler flake8
    autocmd BufWrite *.py :Dispatch
augroup END
```
