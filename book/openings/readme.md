Chastity's Opening Books

In this folder I will keep documents which undergo constant change as I discover more about my favorite openings. My second Chess book will be all about the Queen's Gambit. After that, I will do one about the French Defense. I may possibly do other openings after I master these and the books are near complete. However, no opening book is final because more can always be added later.


# Markdown to HTML

To make standalone html file, this works.

`pandoc ChastityQueenGambit.md -o ebook.html -s --metadata title="Chastity's Queen's Gambit Opening Book" --toc`

To make an epub with correct metadata, this command is perfect.

`pandoc ChastityQueenGambit.md -o ebook.epub -s --metadata title="Chastity's Queen's Gambit Opening Book" --metadata subtitle="A Beginner's Guide to the Queen's Gambit Opening" --metadata author="Chastity White Rose" --toc`

