map <C-l> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1

" show hidden files in NERDTree
let NERDTreeShowHidden=1

" remove some files by extension
let NERDTreeIgnore = ['\.js.map$']

" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>

" expand to the path of the file in the current buffer
nmap <silent> <leader>p :NERDTreeFind<cr>

let g:NERDTreeWinSize=45
