ChasteBase The Ultimate Database

This is part 3 of my series of documents about how I am creating ChasteBase. Unlike the previous two, this one is entirely about extracting useful information about games other people have played not including my own games. I will start with Caissabase. Although in the testing phase I will use commands based on my own database.

First, create a file named "french" that has the following line:

	1. e4 e6

And then run this command on a database to extract only games that begin with those two moves. This is the french defense.

pgn-extract chastitywhiterose_lichess.pgn -Tr0-1 -xfrench.txt

The above test command will output all games to the console. It is for testing purposes only.

The reason this precise command is used is because it will only select games where black plays the French Defense against e4 as white's first move and actually wins those games.
It's important to note that for my personal use, I am not at all interested in games where white wins because I always play d4 and will never need to know how to fight against the french defense myself.
This allows me to strip caissabase down to those games I am interested in.

The next step is to download the Caissabase as a PGN file and then use the following command to save all the results.

pgn-extract caissabase.pgn -Tr0-1 -xfrench.txt -ochastebase_caissa_french.pgn

It will take a REALLY long time to run this command because it has to filter through over 5 MILLION games and select only the French Defense black wins. But this is extremely useful!

# Further reading

All the information I used to learn how to use pgn-extract came from this site:

https://www.cs.kent.ac.uk/people/staff/djb/pgn-extract/

All of the the required flags are documented and I believe that proper use of this tool will save me hundreds of hours of filtering through games manually. That's why I write all of these things down because this information will save me and many other people tons of time and possibly money.
























This is a continuation of my previous document about how and why I use pgn-extract to extract the games of interest. Instead, this one is more about combining the results of more games than only those I have played.

The idea is to learn from other Chess masters!

#Step 1 Get all of my own wins and combine them.

The commands to combine all of my wins from lichess.org and chess.com into one database

For the sake of this example, I am not using the --checkmate flag because most users I win against resign before I can checkmate them. However, because the tag files I use select only wins, all draws by stalemate are eliminated. Because of this information, I decided ultimately that the --checkmate flag is ultimately not needed for this database project.

## Combining all the wins.

In previous examples, used the -t flag in combination with tag files I made. However, the creation of tag files is inconvenient for me. There is a better way to do it! The -T flag is much simpler because all arguments can be placed on the command line.

However, it will be required to run multiple commands to get all the relevant wins from both platforms.

To combine all the wins into one file, we can run two commands and output results to different files.

Two commands to extract only the wins from my lichess database

pgn-extract -Twchastitywhiterose -Tr1-0 chastitywhiterose_lichess.pgn -ochastebase_white_wins_lichess.pgn
pgn-extract -Tbchastitywhiterose -Tr0-1 chastitywhiterose_lichess.pgn -ochastebase_black_wins_lichess.pgn

Two commands to extract only the wins from my chess.com database (my username is slightly different)

pgn-extract -TwChastityWhiteRose -Tr1-0 chastitywhiterose_chesscom.pgn -ochastebase_white_wins_chesscom.pgn
pgn-extract -TbChastityWhiteRose -Tr0-1 chastitywhiterose_chesscom.pgn -ochastebase_black_wins_chesscom.pgn

And then combine those files into one file with a final command.
pgn-extract chastebase_white_wins_lichess.pgn chastebase_black_wins_lichess.pgn chastebase_white_wins_chesscom.pgn chastebase_black_wins_chesscom.pgn -ochastebase_all_wins.pgn

## adding caissabase

This section is not complete. I haven't decided whether to add caissabase or not or in what method.

pgn-extract -t chastity_white.tag chastitywhiterose_chesscom.pgn -ochastebase_white_wins.pgn
pgn-extract -t chastity_white.tag chastitywhiterose_lichess.pgn -ochastebase_white_wins.pgn

