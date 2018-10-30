if exists("g:nerdTreeOpenExternallyLoaded")
  finish
endif
let g:nerdTreeOpenExternallyLoaded = 1

" query the current selection in nerdtree and launch it
" in the default associated application
function! OpenExternally()
  try
    let path = g:NERDTreeFileNode.GetSelected().path.str(
      \ {"escape": 1}
      \ )
  catch
    echoerr "Cannot retrieve path from selection!"
    return
  endtry

  call system(g:nerdTreeOpenExternallyCommand . " ". path)
endfunc

" command used to launch the file in the default associated
" application for each platform
if !exists("g:nerdTreeOpenExternallyCommand")
  if has("unix")
    let g:nerdTreeOpenExternallyCommand = "xdg-open"

  elseif has("macunix")
    let g:nerdTreeOpenExternallyCommand = "open"

  elseif has("win32")
    let g:nerdTreeOpenExternallyCommand = "start"
  endif
endif

" default hotkey used to launch the external application
if !exists("g:nerdTreeOpenExternallyMap")
  let g:nerdTreeOpenExternallyMap = "e"
endif

" using VimEnter event to register the hotkey. Therefore,
" allowing to override it to a custom one
autocmd VimEnter * execute
  \ "autocmd FileType nerdtree nnoremap <buffer> "
  \ . g:nerdTreeOpenExternallyMap .
  \ " :call OpenExternally()<cr>"

