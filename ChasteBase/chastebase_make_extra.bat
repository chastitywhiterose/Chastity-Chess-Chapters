rem pgn-extract: Make a list of ALL my wins on lichess.org and chess.com that end in a checkmate, timeout, or resignation
rem The original pgn files are created by downloading my full databases of games from lichess.org and chess.com using En-Croissant
rem This script has been customized specifically to use both platforms because I am unusual in that I play on both.

set user=chastity

pgn-extract -Twchastitywhiterose -Tr1-0 chastitywhiterose_lichess.pgn -o%user%_white_wins_lichess.pgn
pgn-extract -Tbchastitywhiterose -Tr0-1 chastitywhiterose_lichess.pgn -o%user%_black_wins_lichess.pgn

pgn-extract -TwChastityWhiteRose -Tr1-0 chastitywhiterose_chesscom.pgn -o%user%_white_wins_chesscom.pgn
pgn-extract -TbChastityWhiteRose -Tr0-1 chastitywhiterose_chesscom.pgn -o%user%_black_wins_chesscom.pgn

pgn-extract %user%_white_wins_lichess.pgn %user%_white_wins_chesscom.pgn -o%user%_all_wins_white.pgn
pgn-extract %user%_black_wins_lichess.pgn %user%_black_wins_chesscom.pgn -o%user%_all_wins_black.pgn

