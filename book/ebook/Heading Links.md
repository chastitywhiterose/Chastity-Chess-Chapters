Pandoc commands

pandoc ChastityChessChapters-ebook.md -o ebook.html



It is possible to make links to existing headings within a markdown document. This page shows how.

https://itsfoss.com/markdown-links/

Things to keep in mind is:

- You can only link to subheadings, not normal paragraph text
- This link starts with #
- There should be no upper cases in the link, even if the subheading has it
- The white spaces in the subheading text are replaced by -

---

Different markdown editors have better support than others when it comes to internal links to the same document. Joplin supports the links as I have made them in my ebook but does not support custom heading ids which pandoc supports. Simplenote does not support them at all. This is essential information that I need to consider in my Queen's Gambit book which is planned.

---

Once I read the Pandoc documentation on the rules for linking to existing headings within a document, I used this command to test it as HTML in a web browser.

`pandoc ChastityChessChapters-ebook.md -o ebook.html`

Once I confirmed that the links worked correctly, I then converted to an epub file.

`pandoc --metadata title="Chastity's Chess Chapters" ChastityChessChapters-ebook.md -o ebook.epub`
