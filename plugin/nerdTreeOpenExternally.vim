if exists("g:nerdTreeOpenExternallyLoaded")
  finish
endif
let g:nerdTreeOpenExternallyLoaded = 1

" checking if nerdtree is loaded
if !exists("loaded_nerd_tree")
  echoerr "Error NERDTree is not loaded!"
  finish
endif

" query the current selection in nerdtree and launch it
" in the default associated application
function! NerdTreeOpenExternally()
  try
    let selectedNodePath = g:NERDTreeFileNode.GetSelected().path.str()
  catch
    echoerr "Cannot retrieve path from selection!"
    return
  endtry

  " in case of windows path replacing backslash to forward slash
  let selectedNodePath = substitute(selectedNodePath, '\\', '/', 'g')

  " calling system command
  call system(g:nerdTreeOpenExternallyCommand . ' "' . selectedNodePath . '"')
endfunc

" command used to launch the file in the default
" application for each platform
if !exists("g:nerdTreeOpenExternallyCommand")
  if has("unix")
    let g:nerdTreeOpenExternallyCommand = "xdg-open"

  elseif has("macunix")
    let g:nerdTreeOpenExternallyCommand = "open"

  elseif has("win32")
    let g:nerdTreeOpenExternallyCommand = 'cmd /C start ""'
  endif
endif

" default hotkey used to launch the external application
if !exists("g:nerdTreeOpenExternallyMap")
  let g:nerdTreeOpenExternallyMap = "e"
endif

" registering key map
execute "autocmd FileType nerdtree nnoremap <buffer> "
  \ . g:nerdTreeOpenExternallyMap
  \ .  " :call NerdTreeOpenExternally()<cr>"

