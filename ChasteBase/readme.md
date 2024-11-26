# ChasteBase README

This text explains everything you need to know about what I have done to create the Chess database that I am calling ChasteBase.

# What is a Chess database

But the very concept of a Chess database is nothing more than a list of games that took place. Chess is unique in that it has a notation system detailing every single move in more detail than anyone can comprehend. However, the usefulness of a Chess database comes from the fact that programs exist for playing back the moves on a board so that you can watch every move take place as if it were a book or a movie. In fact, it's more like a book because you can step through each move at your speed.

# Why would I use a Chess database?

A Chess database is a way of seeing the play style of different players and also how popular certain moves are compared to others in a given position. Programs such as Chessx and En-Croissant allow me to use databases and find what moves I am most likely to encounter when I play with humans. A Chess database is vastly more useful than finding out what a machine thinks is the best move. Chess engines don't play like humans and are not very helpful if you want to win against humans.

# Why another Chess database?

There are many Chess databases on the internet. Some of them are Free, but others you have to buy. This database is one using only the openings that I am interested in. These openings are

- Queen's Gambit
- French Defence
- Trompowsky Attack
 
Why I chose these openings would take a whole book to explain. I have explored many openings but these are the ones I have settled on as the most reliable. There are also a lot of courses, videos, and books available for these openings and they are easy to study for that reason.

# How did you make this database?

I used the 3 most popular freely available databases. I downloaded them through the En-Croissant interface because it makes it easy to one click install these. However, they are extremely large files!

Below are the official websites for these databases if you want more information on them.

http://caissabase.co.uk/

https://ajedrezdata.com/

https://rebel13.nl/download/data.html

Just know that my database is a lot smaller than any of these because it contains only those games that I found relevant base on my criteria.

# What criteria

1. The games must begin with the opening position I am studying.

   Limiting it to the openings I mentioned earlier gives me a solid opening repertoire for the most popular moves in how the game begins. Knowing the Queen's Gambit is good for the black or white player. The French defense is my chosen response to e4 as white's first move. The Trompowsky is actually the opening for white that I know the least about, but I have seen grandmasters do some deadly traps with it, and I hope to learn this power!

2. The games came from reliable source databases. These aren't just complete noobs on lichess.org or chess.com. If you open the database, you will see the names of either real people that exist or at least usernames on the websites they played. The makers of the original databases I used included only games by master players. Most of them will have over 2000 ELO ratings and know what they are doing.

3. The games MUST end in a checkmate. I refuse to include games that involve someone resigning or timing out. This restriction limits the database to the games that end for the right reason, that the game was actually finished.

4. The games must have the correct wins. For example, the French Defense is a method for fighting against e4. With perfect play, the black player should always win. Therefore, only black wins are included in the French Defense. Similarly, only white wins are important for the Trompowski. The Queen's Gambit is a different beast because either side can realistically win or draw. There are many good moves by both white and black in many positions. I wouldn't do my favorite opening justice if I didn't include all wins by both players.

# How the hell did you filter through millions of games and find the ones you wanted?

I used a free and open-source command line tool called pgn-extract.

All the information I used to learn how to use pgn-extract came from this site:

https://www.cs.kent.ac.uk/people/staff/djb/pgn-extract/

Obviously, I could not have done it manually because that would take millions of years. However, it did take many hours to achieve it because the databases are large and I had to learn how to use the tool and know its command line options.

# How should I use this database?

I will be recording videos on precisely how to use it as I intended. It can be used with a variety of software. I definitely recommend En-Croissant, though.