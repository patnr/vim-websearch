" Prevent plugin from running twice
if exists('g:loaded_websearch')
    finish
endif
let g:loaded_websearch = 1

" From plasticboy/vim-markdown:ftplugin/markdown.vim
function! s:VersionAwareNetrwBrowseX(url)
    if has('patch-7.4.567')
        call netrw#BrowseX(a:url, 0)
    else
        call netrw#NetrwBrowseX(a:url, 0)
    endif
endf

function! WebSearch(type, searchterm="empty")
    " Set searchterm
    if a:searchterm == "empty"
        let searchterm = getreg("a")
    else
        let searchterm = a:searchterm
    endif

    " Case
    if a:type == "open"
        let searchterm = searchterm
    elseif a:type == "lucky"
        let searchterm = "https://duckduckgo.com/?q=\\!ducky+" . searchterm
    elseif a:type == "google"
        let searchterm = "http://google.com/search?q=" . searchterm
    elseif a:type == "unicode"
        let searchterm = "http://google.com/search?q=unicode+" . searchterm
    elseif a:type == "thes"
        let searchterm = "https://www.thesaurus.com/browse/" . searchterm
    endif
    call s:VersionAwareNetrwBrowseX(searchterm)
endfunction


""""""""""""""
"  Mappings  "
""""""""""""""
" Google
nnoremap go viw"ay:call WebSearch("google")<CR>
nnoremap gO viW"ay:call WebSearch("google")<CR>
vnoremap go    "ay:call WebSearch("google")<CR>
" Lucky
nnoremap g1 viw"ay:call WebSearch("lucky")<CR>
nnoremap g! viW"ay:call WebSearch("lucky")<CR>
vnoremap g1    "ay:call WebSearch("lucky")<CR>
" gx fix
nnoremap gx viw"ay:call WebSearch("open")<CR>
nnoremap gX viW"ay:call WebSearch("open")<CR>
vnoremap gx    "ay:call WebSearch("open")<CR>
" Thesaurus
nnoremap gt viw"ay:call WebSearch("thes")<CR>
nnoremap gT viW"ay:call WebSearch("thes")<CR>
vnoremap gt    "ay:call WebSearch("thes")<CR>
" Unicode
command! -nargs=* Uni call WebSearch("unicode", <q-args>)
" Browse math/alpha: https://www.compart.com/en/unicode/block/U+1D400
