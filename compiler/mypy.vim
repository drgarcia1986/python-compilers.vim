" Vim compiler file
" Compiler:                Mypy
" Maintainer:              Diego Garcia <drgarcia1986@gmail.com>
" URL:                     https://github.com/drgarcia1986/python-compilers.vim
" Inspired by:             PHPSpec (https://github.com/renanivo/phpspec.vim)

if exists("current_compiler")
  finish
endif
let current_compiler = "mypy"

if exists(":CompilerSet") != 2                " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet makeprg=mypy\ %
CompilerSet errorformat=%f:%l:\ %m

let &cpo = s:cpo_save
unlet s:cpo_save
