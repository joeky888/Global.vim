autocmd BufRead,BufNewFile,BufWritePost,BufEnter,FileType,ColorScheme,SessionLoadPost * call HighlightGlobal()

function! HighlightGlobal()
  if &filetype == "" || &filetype == "text"
    syn match alphanumeric  "[A-Za-z0-9_]"
    " Copied from $VIM/syntax/lua.vim
    " integer number
    syn match txtNumber     "\<\d\+\>"
    " floating point number, with dot, optional exponent
    syn match txtNumber     "\<\d\+\.\d*\%([eE][-+]\=\d\+\)\=\>"
    " floating point number, starting with a dot, optional exponent
    syn match txtNumber     "\.\d\+\%([eE][-+]\=\d\+\)\=\>"
    " floating point number, without dot, with exponent
    syn match txtNumber     "\<\d\+[eE][-+]\=\d\+\>"
    " Wide characters and non-ascii characters
    syn match nonalphabet   "[\u0021-\u002F]"
    syn match nonalphabet   "[\u003A-\u0040]"
    syn match nonalphabet   "[\u005B-\u0060]"
    syn match nonalphabet   "[\u007B-\u007E]"
    syn match nonalphabet   "[^\u0000-\u007F]"
    syn match lineURL       "\(https\?\|ftps\?\|git\|ssh\|scp\|file\):\/\/[[:alnum:]+&!,\'\"=@;<>\?\:|\^`\*\$%\/_#.\-\[\]\{\}()]*"
    syn match txtComment    "^#.*$"
    syn match txtComment    "\s#.*"
    syn match txtComment    "^\/\/.*$"
    syn match txtComment    "\s\/\/.*"
    syn match txtComment    "^;.*"
    hi def link alphanumeric  Function
    hi def link txtNumber     Define
    hi def link lineURL       Number
    hi def link nonalphabet   Conditional
    hi def link txtComment    Comment
  endif
endfunction
