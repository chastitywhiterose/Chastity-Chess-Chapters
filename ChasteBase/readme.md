# Chaste Base README file explaining the process of this database

This text details what I have done to create my Chess database that I am calling Chaste Base. It is a record of my own games I have played except filtered down for more relevance to the openings I am studying.

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

# Selecting only games I won

Because of the usefulness of pgn-extract, I am able to filter down to only the games that were won under the criteria I choose. The fact that it is a command line tool makes it especially helpful too!

## Selecting my wins as white

For it to work, the tag file "chastity_white.tag" contains

    White "chastitywhiterose"
    Result "1-0"


For example, the following command will find all games on lichess that I have won as white by using a tag file.

pgn-extract -t chastity_white.tag chastitywhiterose_lichess.pgn --checkmate 

This is a great way of extracting all of my wins as white.

## Selecting my wins as black

The reverse process is also possible. By creating another tag file "chastity_black.tag"

    Black "chastitywhiterose"
    Result "0-1"

And then changing the filename in the command, I can extract all times I was playing black and won.

pgn-extract -t chastity_black.tag chastitywhiterose_lichess.pgn --checkmate 

This is extremely useful because wins are more helpful than losses. Although I generally use the --checkmate flag to filter it out games that end in resignation, it might be better to not use it because sometimes the opponents resign because they see a checkmate coming. It may also be better not to filter by openings as in the previous examples because unless there are a lot of games, it is usually unnecessary.

## Combining all the wins.

To combine all the wins into one file, we can run two commands and output results to different files.

pgn-extract -t chastity_white.tag chastitywhiterose_lichess.pgn --checkmate -ochastebase_white_wins.pgn
pgn-extract -t chastity_black.tag chastitywhiterose_lichess.pgn --checkmate -ochastebase_black_wins.pgn

And then combine those two files into one file with a final command.
pgn-extract chastebase_white_wins.pgn chastebase_black_wins.pgn -ochastebase_all_wins.pgn

I wrote this document for myself mainly but I will share it with everyone, especially my Chess students because I believe creating a database of games to review and analyze is actually extremely helpful for seeing which moves they have the most success with. In fact, this data could reveal that certain openings are more in line with how a person's brain operates. Or maybe they have practiced an opening more than others and we can see how often they started with it.

# Other examples

## Extract the filtered games from another database. In this example, caissabase which was first exported to PGN format from En-Croissant

pgn-extract -ochastebase_caissa.pgn caissabase.pgn --checkmate -xvars.txt

Because of the huge size of Caissabase (over 3 gigabytes), it took a long time to filter through it but the result was well worth it. This filters down a huge database into only those that ended by checkmate. This gets rid of those lost on time or stalemates.

## To be continued and updated as I find new helpful information on using pgnextract or perhaps learn about good software for viewing the pgn files.
