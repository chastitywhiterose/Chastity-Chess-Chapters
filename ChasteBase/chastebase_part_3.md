ChasteBase The Ultimate Database

This is part 3 of my series of documents about how I am creating ChasteBase. Unlike the previous two, this one is entirely about extracting useful information about games other people have played not including my own games. I will start with Caissabase. Although in the testing phase I will use commands based on my own database.

Important note: The --checkmate flag included in all the commands specifically gives only the games that end in a checkmate. When I play on lichess.org, too many coward resign before I can checkmate them. So I don't usually use it for my database of my personal games, but for larger databases like Caissabase, it is absolutely essential to get rid of the games I don't want because they end in a draw or resignation.

First, create a file named "french.txt" that has the following line:

	1. e4 e6

And then run this command on a database to extract only games that begin with those two moves. This is the french defense.

pgn-extract chastitywhiterose_lichess.pgn -Tr0-1 -xfrench.txt --checkmate 

The above test command will output all games to the console. It is for testing purposes only.

The reason this precise command is used is because it will only select games where black plays the French Defense against e4 as white's first move and actually wins those games.
It's important to note that for my personal use, I am not at all interested in games where white wins because I always play d4 and will never need to know how to fight against the french defense myself.
This allows me to strip caissabase down to those games I am interested in.

The next step is to download the Caissabase as a PGN file and then use the following command to save all the results.

pgn-extract caissabase.pgn -Tr0-1 -xfrench.txt -ochastebase_caissa_french_black_wins.pgn --checkmate

It will take a REALLY long time to run this command because it has to filter through over 5 MILLION games and select only the French Defense black wins. But this is extremely useful!

The next step however is to extract all the games with the Queen's Gambit from Caissabase. In this case, we are interested in all of the games whether white or black wins. This is because I need to know how to win with it as white but also against it as black. So in this example we will be extracting the white wins and black wins but they will be sent to different files!

First, create a file named "queengambit.txt" that contains the following line:

	1. d4 d5 2. c4

Then run these test commands to see if they work:

pgn-extract chastitywhiterose_lichess.pgn -Tr1-0 -xqueengambit.txt --checkmate
pgn-extract chastitywhiterose_lichess.pgn -Tr0-1 -xqueengambit.txt --checkmate

Finally, use this command to extract all of the games containing the Queen's Gambit position from Caissabase.

pgn-extract caissabase.pgn -Tr1-0 -xqueengambit.txt -ochastebase_caissa_queen_gambit_white_wins.pgn --checkmate
pgn-extract caissabase.pgn -Tr0-1 -xqueengambit.txt -ochastebase_caissa_queen_gambit_black_wins.pgn --checkmate


# Further reading

All the information I used to learn how to use pgn-extract came from this site:

https://www.cs.kent.ac.uk/people/staff/djb/pgn-extract/

All of the the required flags are documented and I believe that proper use of this tool will save me hundreds of hours of filtering through games manually. That's why I write all of these things down because this information will save me and many other people tons of time and possibly money.





