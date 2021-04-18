Vim-websearch
=============

Defines the following maps acting on the word-under-cursor, or visually selected.

maps       | function
---------- | ----------------
`gx`, `gX` | Open using system's generic resouce opener (useful for e.g. url's)
`go`, `gO` | Google search
`g0`, `g=` | "I feel lucky" search
`gs`, `gS` | Thesaurus/synonym lookup

The upper-case versions are used for big/WORD-delimitation.

It also defines the `:Uni` command which helps you search for unicode symbols.

- FAQ: Isn't this too trivial?
- Answer: Yeah, it's pretty trivial. I just found it convenient to
  centralize this functionality because they all run into the same issue:
  In my experience vim-netrw's `gx` is often buggy/broken,
  depending on platform and vim version,
  while `!xdg-open https://www.domain.com`
  might (again depending on platform and vim version)
  necessitate redrawing the screen.
