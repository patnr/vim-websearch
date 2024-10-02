Vim-websearch
=============

Defines the following maps acting on the word-under-cursor, or visually selected.

word map | WORD map | functionality
-------- | -------- | -------------
`wg`     | `Wg`     | Google search
`w1`     | `W1`     | "I feel lucky" search
`wt`     | `Wt`     | Thesaurus/synonym lookup

Also, use `:Uni <searchterm>` to search for unicode symbols via Google.

FAQ: Isn't this too trivial?  
Answer: Yeah, it's pretty trivial. I just found it convenient to centralize
this functionality because they all run into the same issue:
In my experience vim-netrw's `gx` is often buggy/broken,
depending on platform and vim version.

Alternatives:
- [reddit/vim](https://old.reddit.com/r/vim/search?q=netrw+gx&sort=relevance&t=all)
- [open-browser.vim](https://github.com/tyru/open-browser.vim)
- [fern](https://github.com/lambdalisue/fern.vim/blob/951a05d3f6ebc785db728ccfdf1759a2cf7c15ff/doc/fern.txt#L89)
