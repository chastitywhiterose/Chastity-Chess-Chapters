# Markdown to HTML

To make standalone html file, this works.

`pandoc ChastityQueenGambit.md -o ebook.html -s --metadata title="Chastity's Queen's Gambit Opening Book" --toc`

To make an epub with correct metadata, this command is perfect.

`pandoc ChastityQueenGambit.md -o ebook.epub -s --metadata title="Chastity's Queen's Gambit Opening Book" --metadata subtitle="A Beginner's Guide to the Queen's Gambit Opening" --metadata author="Chastity White Rose" --toc`

