set nocompatible    "run in vim mode
set expandtab       "expand tabs into spaces
set autoindent      "auto-indent new lines
set smartindent     "return ending brackets to proper locations
set softtabstop=4   "indentation level of soft-tabs
set tabstop=4       "indentation level of normal tabs
set shiftwidth=4    "how many columns to re-indent with << and >>
set showmatch       "show matching brackets
set ruler           "show cursor position at all times
set nohls           "don't highlight the previous search term
set number          "turn on line numbering
set wrap            "turn on visual word wrapping
set linebreak       "only break lines on 'breakat' characters
syntax on           "turn on syntax highlighting
 
if has("autocmd")
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
\| exe "normal g'\"" | endif
endif
 
autocmd FileType make setlocal noexpandtab

augroup filetypedetect 
  au! BufRead,BufNewFile *nc setfiletype nc "http://www.vim.org/scripts/script.php?script_id=1847
  "html.ep now handled by https://github.com/yko/mojo.vim
  autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp "Arduino
augroup END
 
:set bs=2 "fix backspace on some consoles
