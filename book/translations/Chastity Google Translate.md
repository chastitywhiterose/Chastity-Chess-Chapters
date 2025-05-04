Chastity's Google Translate Process

First, I had to take the original ebook in English and convert it into an OpenOffice Document.

`pandoc ChastityChessChapters-ebook.md -o book.odt --reference-doc custom-reference.odt`

Then I saved it as a Microsoft Word docx file from within LibreOffice. This is so Google Translate will accept it as a valid document.

Then, I had to go to [Google Translate](https://translate.google.com/) and convert the entire document to Spanish.

The final step was converting this document into an epub for the Spanish ebook.

`pandoc book-spanish.docx -o ebook-spanish.epub -s --metadata title="Capítulos de ajedrez de Chastity" --metadata subtitle="¡El ajedrez no es tan difícil de aprender como te han dicho!" --metadata author="Chastity White Rose"`

When I published it, I did not edit the results at all because I know so little