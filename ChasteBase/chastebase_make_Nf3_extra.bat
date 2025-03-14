rem pgn-extract: Make a list of ALL my wins on lichess.org and chess.com that end in a checkmate!
rem The original pgn files are created by downloading my full databases of games from lichess.org and chess.com using En-Croissant
rem This script has been customized specifically to use both platforms because I am unusual in that I play on both.

set user=chastity

pgn-extract -Twchastitywhiterose -Tr1-0 -xqueengambit_Nf3.txt chastitywhiterose_lichess.pgn -o%user%_white_wins_lichess.pgn 
pgn-extract -TwChastityWhiteRose -Tr1-0 -xqueengambit_Nf3.txt chastitywhiterose_chesscom.pgn -o%user%_white_wins_chesscom.pgn 

pgn-extract %user%_white_wins_lichess.pgn %user%_white_wins_chesscom.pgn -o%user%_all_wins_white_Nf3.pgn
