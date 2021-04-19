" Prevent plugin from running twice
if exists('g:loaded_websearch')
    finish
endif
let g:loaded_websearch = 1


if !exists("g:websearch_opener")
  if has("win32")
    let g:websearch_opener = "start"
  "elseif substitute(system('uname'), "\n", "", "") == 'Darwin'
  elseif has('mac')
    let g:websearch_opener = "open"
  else
    let g:websearch_opener = "xdg-open"
  endif
endif


function! WebSearch(type, searchterm="empty")
    let opener = "silent! !" . g:websearch_opener

    " Set searchterm
    if a:searchterm == "empty"
        let searchterm = getreg("a")
    else
        let searchterm = a:searchterm
    endif


    " Case
    if a:type == "open"
        silent! exec opener '"' . searchterm . '" &'
    elseif a:type == "lucky"
        silent! exec opener " \"https://duckduckgo.com/?q=\\!ducky+" . searchterm . "\" &"
    elseif a:type == "google"
        silent! exec opener " \"http://google.com/search?q=" . searchterm . "\" &"
    elseif a:type == "unicode"
        silent! exec opener " \"http://google.com/search?q=unicode+" . searchterm . "\" &"
    elseif a:type == "thes"
        silent! exec opener " \"https://www.thesaurus.com/browse/" . searchterm . "\" &"
    endif

    " Fix screen corruption
    " Seems to be necessary in terminal/vim and macvim (but not gvim)
    sleep 200m | redraw! | redraw!
endfunction


""""""""""""""
"  Mappings  "
""""""""""""""
" Google
nnoremap go viw"ay:call WebSearch("google")<CR>
nnoremap gO viW"ay:call WebSearch("google")<CR>
vnoremap go    "ay:call WebSearch("google")<CR>
" Lucky
nnoremap g0 viw"ay:call WebSearch("lucky")<CR>
nnoremap g= viW"ay:call WebSearch("lucky")<CR>
vnoremap g0    "ay:call WebSearch("lucky")<CR>
" gx fix
nnoremap gx viw"ay:call WebSearch("open")<CR>
nnoremap gX viW"ay:call WebSearch("open")<CR>
vnoremap gx    "ay:call WebSearch("open")<CR>
" Thesaurus
nnoremap gs viw"ay:call WebSearch("thes")<CR>
vnoremap gs    "ay:call WebSearch("thes")<CR>
" Unicode
command! -nargs=* Uni call WebSearch("unicode", <q-args>)
" Browse math/alpha: https://www.compart.com/en/unicode/block/U+1D400
