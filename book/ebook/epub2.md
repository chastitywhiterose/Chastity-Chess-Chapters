Draft2Digital recommends an epub2 format. Therefor the following command can do this.

-t epub2

has been added to the pandoc command for export.

`pandoc -t epub2 --metadata title="Chastity's Chess Chapters" ChastityChessChapters-ebook.md -o ebook.epub`

However, I decided to go with epub3. The information above could still be used for a different project though.

standalone html output

`pandoc ChastityChessChapters-ebook.md -o ebook.html -s --metadata title="Chastity's Chess Chapters"`
