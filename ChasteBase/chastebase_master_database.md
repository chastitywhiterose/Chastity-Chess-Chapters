# ChasteBase README for database of Chess Masters

The location of databases used by en-croissant:

### C:\Users\chand\AppData\Roaming\org.encroissant.app\db

pgn-extract -Twchastitywhiterose -Tr1-0 chastitywhiterose_lichess.pgn --checkmate -ochastity_white_wins_lichess.pgn
pgn-extract -Tbchastitywhiterose -Tr0-1 chastitywhiterose_lichess.pgn --checkmate -ochastity_black_wins_lichess.pgn

---

This text is a markdown document but is really better suited for reading in a plain text editor. I will have some scripts here that I have worked on.

First, two files are needed.

The first is named white_openings.txt because it contains the Queens's Gambit, London System, and Trompowsky Attack. These are the 3 main openings a d4 player like me is interested in.


1. d4 d5 2. c4
1. d4 Nf6 2. Bg5
1. d4 d5 2. Bf4

The second is named "black_openings.txt" because it contains the Queens's Gambit and French Defense

1. d4 d5 2. c4
1. e4 e6

Now we are ready to create the database of master players. Until I am rated 2000 or above, I will not be including myself in this list. Instead, we will focus on 3 master players.

Hikaru
MagnusCarlsen
Firouzja2003

These are the top 3 Chess.com players for the Blitz time control. They must be doing something right, so I want to analyze their games. The following script I wrote accomplishes extracting what I want.

---

rem pgn-extract: Make database of top 3 Chess.com players. Only checkmate endings with specific openings I want.

set database=Hikaru_chesscom.pgn
set master=Hikaru

pgn-extract -Tw%master% -Tr1-0 -xwhite_openings.txt %database% -o%master%_white_wins_chesscom.pgn --checkmate
pgn-extract -Tb%master% -Tr0-1 -xblack_openings.txt %database% -o%master%_black_wins_chesscom.pgn --checkmate

set database=MagnusCarlsen_chesscom.pgn
set master=MagnusCarlsen

pgn-extract -Tw%master% -Tr1-0 -xwhite_openings.txt %database% -o%master%_white_wins_chesscom.pgn --checkmate
pgn-extract -Tb%master% -Tr0-1 -xblack_openings.txt %database% -o%master%_black_wins_chesscom.pgn --checkmate

set database=Firouzja2003_chesscom.pgn
set master=Firouzja2003

pgn-extract -Tw%master% -Tr1-0 -xwhite_openings.txt %database% -o%master%_white_wins_chesscom.pgn --checkmate
pgn-extract -Tb%master% -Tr0-1 -xblack_openings.txt %database% -o%master%_black_wins_chesscom.pgn --checkmate


pgn-extract Hikaru_white_wins_chesscom.pgn MagnusCarlsen_white_wins_chesscom.pgn Firouzja2003_white_wins_chesscom.pgn -otop3_master_white_wins

pgn-extract Hikaru_black_wins_chesscom.pgn MagnusCarlsen_black_wins_chesscom.pgn Firouzja2003_black_wins_chesscom.pgn -otop3_master_black_wins




---



# More notes

The website for pgn-extract is here:

https://www.cs.kent.ac.uk/people/staff/djb/pgn-extract/

By reviewing the documentation, I noticed something.

https://www.cs.kent.ac.uk/people/staff/djb/pgn-extract/help.html#variations

I have been using the -x flag for selecting the variations I want, however, it might actually be better to use the -v flag.

The reason is that -x finds matches that reach a position regardless of the move order to get there. This resulted in picking up games that begin with c4 instead of d4. This made larger databases that take forever to load. Yes, I wanted lots of games but I want them to always start with d4 as the first move.

So by running this command on the file I created above, I can limit the results further.

pgn-extract chastebase_caissa_white_openings.pgn -Tr1-0 -vwhite_openings.txt -ochastebase_caissa_white_openings_v.pgn

pgn-extract chastebase_caissa_black_openings.pgn -Tr1-0 -vwhite_openings.txt -ochastebase_caissa_black_openings_v.pgn

So the reality is that I should have been using the -v flag instead of the -x flag for what I am doing. However, games that result in a position by a different move order ARE worth studying. I just don't need them for what I am trying to do. I want to make videos of my own wins as well as wins by the master players in these free databases.

# Big notes

Actually, ignore everything I said about. It turns out that the -v flag didn't help because I still have games that began with different move orders. More research is needed to filter these in the way I want.
