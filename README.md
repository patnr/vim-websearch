Vim-websearch
=============

Defines the following maps acting on the word-under-cursor, or visually selected.

word map | WORD map | functionality
-------- | -------- | -------------
`gx`     | `gX`     | Open url using system's resource opener
`go`     | `gO`     | Google search
`g0`     | `g=`     | "I feel lucky" search
`gt`     | `gT`     | Thesaurus/synonym lookup

Also, use `:Uni <searchterm>` to search for unicode symbols via Google.

FAQ: Isn't this too trivial?  
Answer: Yeah, it's pretty trivial. I just found it convenient to centralize
this functionality because they all run into the same issue:
In my experience vim-netrw's `gx` is often buggy/broken,
depending on platform and vim version.
