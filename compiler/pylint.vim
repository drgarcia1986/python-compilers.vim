" Vim compiler file
" Compiler:                PyLint
" Maintainer:              Diego Garcia <drgarcia1986@gmail.com>
" URL:                     https://github.com/drgarcia1986/python-compilers.vim
" Inspired by:             PHPSpec (https://github.com/renanivo/phpspec.vim)

if exists("current_compiler")
  finish
endif
let current_compiler = "pylint"

if exists(":CompilerSet") != 2                " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet makeprg=pylint\ --reports=n\ --msg-template=\"{path}:{line}:\ {msg_id}\ {symbol},\ {obj}\ {msg}\"\ %:p
CompilerSet errorformat=%f:%l:\ %m

let &cpo = s:cpo_save
unlet s:cpo_save
