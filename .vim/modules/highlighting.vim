" Highlight searches.
set hlsearch

" Highlight the current line.
set cursorline

function! s:after_colorscheme()
  " Make spelling problems easier to read.
  highlight clear SpellBad
  highlight clear SpellCap
  highlight clear SpellLocal
  highlight clear SpellRare

  highlight SpellBad cterm=underline
  highlight SpellCap cterm=underline
  highlight SpellLocal cterm=underline
  highlight SpellRare cterm=underline

  " Stop the cross hair ruining highlighting.
  highlight CursorLine cterm=NONE ctermbg=235 ctermfg=NONE
  highlight CursorColumn cterm=NONE ctermbg=235 ctermfg=NONE 

  " Make conceal look better.
  highlight Conceal cterm=bold ctermbg=NONE ctermfg=67


  " NERDTress File highlighting
  function! NERDTreeHighlightFile(extension, fg, bg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension . ' ctermbg=' . a:bg . ' ctermfg=' . a:fg
    exec 'autocmd filetype nerdtree syn match ' . a:extension . ' #^\s\+.*' . a:extension . '$#'
  endfunction

  call NERDTreeHighlightFile('jade', '70', 'none')
  call NERDTreeHighlightFile('ini', '178', 'none')
  call NERDTreeHighlightFile('md', '67', 'none')
  call NERDTreeHighlightFile('yml', '178', 'none')
  call NERDTreeHighlightFile('config', '178', 'none')
  call NERDTreeHighlightFile('conf', '178', 'none')
  call NERDTreeHighlightFile('json', '178', 'none')
  call NERDTreeHighlightFile('html', '70', 'none')
  call NERDTreeHighlightFile('template', '70', 'none')
  call NERDTreeHighlightFile('styl', '30', 'none')
  call NERDTreeHighlightFile('css', '30', 'none')
  call NERDTreeHighlightFile('coffee', '130', 'none')
  call NERDTreeHighlightFile('js', '130', 'none')
  call NERDTreeHighlightFile('php', '96', 'none')
  call NERDTreeHighlightFile('log', '103', 'none')
  call NERDTreeHighlightFile('tf', '70', 'none')
endfunction

augroup after_colorscheme
  autocmd!
  autocmd ColorScheme * call s:after_colorscheme()
augroup END

" au BufNewFile,BufRead *.ejs set filetype=js
" au BufNewFile,BufRead *.ejs set filetype=html
