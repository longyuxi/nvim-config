" Description: This is my personal Nvim configuration supporting Mac, Linux
" and Windows, with various plugins configured. This configuration evolves as
" I learn more about Nvim and becomes more proficient in using Nvim. Since it
" is very long (more than 1000 lines!), you should read it carefully and take
" only the settings and options that suits you. I would not recommend cloning
" this repo and replace your own config. Good configurations are personal,
" built over time with a lot of polish.
" Author: Jie-dong Hao
" Email: jdhao@hotmail.com

let mapleader = ','

let g:config_files = [
      \ 'globals.vim',
      \ 'options.vim',
      \ 'autocommands.vim',
      \ 'mappings.vim',
      \ 'plugins.vim',
      \ 'themes.vim'
      \ ]

"       \ 'themes.vim'

for s:fname in g:config_files
  execute printf('source %s/core/%s', stdpath('config'), s:fname)
endfor

let g:python3_host_prog = "/Users/longyuxi/miniconda3/bin/python"
let g:neotex_enabled = 2

autocmd FileType markdown set spell
