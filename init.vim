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

for s:fname in g:config_files
  execute printf('source %s/core/%s', stdpath('config'), s:fname)
endfor

if g:is_mac
  let g:python3_host_prog = "/Users/longyuxi/miniconda3/bin/python"
else
  let g:python3_host_prog = "/home/longyuxi/miniconda3/bin/python"

endif

let g:neotex_enabled = 2

autocmd FileType markdown set spell
autocmd FileType markdown nmap <buffer> <F9> <plug>MarkdownPreview
autocmd FileType tex set synmaxcol=0
" autocmd VimEnter * nmap <C-/> <Plug>Commentary
nmap <C-_> gcc
vmap <C-_> gc
" imap ]] ]]<Esc>O

nmap <leader>, :BufferLineCycleNext<CR>
nmap <leader>. :BufferLineCyclePrev<CR>

" for LaTeX editing -  open the output pdf file. On Linux, also open the latex
" file in a new terminal
if g:is_mac
  nmap <leader>o :!open %:p:r.pdf<CR><CR>
else
  nmap <leader>o :!gnome-terminal -- nvim %:p<CR>:!xdg-open %:p:r.pdf<CR><CR>
endif

" templates
autocmd BufNewFile  *.tex	0r ~/.config/nvim/templates/latex-template.tex
let g:neotex_pdflatex_alternative = 'xelatex'
