# Chaste Base

This file details what I have done to create my Chess database that I am calling Chaste Base.

# Step 1: Downloaded all of my lichess.org and chess.com games using En Croissant. It can download them and then I just have to copy over the PGN files from where the program stores them.

The location of databases used by en-croissant:

C:\Users\chand\AppData\Roaming\org.encroissant.app\db

This gives me the files:

chastitywhiterose_lichess.pgn
chastitywhiterose_chesscom.pgn

They contain all of my games on these two platforms. 

# Step 2: Downloaded and installed pgn-extract.

Really all I did to install it was choose a place to download it and add it to my path. Here is where I put it on my PC.

C:\pgn-extract

# Step 3: Run commands to choose the games to the ones I am interested in.

## Collect all games into one file.

pgn-extract -ochastebase.pgn chastitywhiterose_lichess.pgn chastitywhiterose_chesscom.pgn

## Collect all games into one file. But only include those games which end in a checkmate. Resignations and timeouts don't count and are excluded.

pgn-extract -ochastebase.pgn chastitywhiterose_lichess.pgn chastitywhiterose_chesscom.pgn --checkmate

## Include all games that begin with the Queen's Gambit or the French Defense

pgn-extract -ochastebase.pgn chastitywhiterose_lichess.pgn chastitywhiterose_chesscom.pgn --checkmate -xvars.txt

That command works because the file vars.txt contains the following two lines

    1. d4 d5 2. c4
    1. e4 e6

This allows me to include the exact 2 openings I am studying.

# Final Notes

Because of the usefulness of pgn-extract, I am able to filter down to only the games that were won under the criteria I choose. The fact that it is a command line tool makes it especially helpful too!

# Other examples

## Extract the filtered games from another database. In this example, caissabase which was first exported to PGN format from En-Croissant

pgn-extract -ochastebase_caissa.pgn caissabase.pgn --checkmate -xvars.txt