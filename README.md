Vim-websearch
=============

Defines the following maps acting on the word-under-cursor, or visually selected.

word map | WORD map | functionality
-------- | -------- | -------------
`gx`     | `gX`     | Open (e.g. url or image file) using system's resource opener
`go`     | `gO`     | Google search
`g0`     | `g=`     | "I feel lucky" search
`gs`     | `gS`     | Thesaurus/synonym lookup

Also, use `:Uni <searchterm>` to search for unicode symbols via Google.

FAQ: Isn't this too trivial?  
Answer: Yeah, it's pretty trivial. I just found it convenient to centralize
this functionality because they all run into the same issue:
In my experience vim-netrw's `gx` is often buggy/broken,
depending on platform and vim version,
while `!xdg-open https://www.domain.com` might (again depending
on platform and vim version) necessitate redrawing the screen.
