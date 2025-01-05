rem pgn-extract: Make a list of ALL my wins OR losses on lichess.org and chess.com that end in a checkmate!
rem But sort them into their own files so they can be viewed independently
rem The original pgn files are created by downloading my full databases of games from lichess.org and chess.com using En-Croissant
rem This script has been customized specifically to use both platforms because I am unusual in that I play on both.


pgn-extract -Tr1-0 chastitywhiterose_lichess.pgn -oall_white_wins_lichess.pgn
pgn-extract -Tr0-1 chastitywhiterose_lichess.pgn -oall_black_wins_lichess.pgn

pgn-extract -Tr1-0 chastitywhiterose_chesscom.pgn -oall_white_wins_chesscom.pgn
pgn-extract -Tr0-1 chastitywhiterose_chesscom.pgn -oall_black_wins_chesscom.pgn

pgn-extract all_white_wins_lichess.pgn all_white_wins_chesscom.pgn -oall_wins_white.pgn
pgn-extract all_black_wins_lichess.pgn all_black_wins_chesscom.pgn -oall_wins_black.pgn
