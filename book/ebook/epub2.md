Draft2Digital recommends an epub2 format. Therefor the following command can do this.

-t epub2

has been added to the pandoc command for export.

`pandoc -t epub2 --metadata title="Chastity's Chess Chapters" ChastityChessChapters-ebook.md -o ebook.epub`

However, I decided to go with epub3. The information above could still be used for a different project though.

standalone html output

`pandoc ChastityChessChapters-ebook.md -o ebook.html -s --metadata title="Chastity's Chess Chapters"`

---

Command for spanish epub from the docx file:

`pandoc book-spanish.docx -o ebook-spanish.epub -s --metadata title="Capítulos de ajedrez de Chastity" --metadata subtitle="¡El ajedrez no es tan difícil de aprender como te han dicho!" --metadata author="Chastity White Rose"`

Command for English epub from the Markdown file:

`pandoc ChastityChessChapters-ebook.md -o ebook.epub -s --metadata title="Chastity's Chess Chapters" --metadata subtitle="Chess is not as hard to learn as you have been told!" --metadata author="Chastity White Rose"`
