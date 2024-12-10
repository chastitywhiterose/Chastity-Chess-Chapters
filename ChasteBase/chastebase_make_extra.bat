rem pgn-extract: Make a list of ALL my wins on lichess.org and chess.com that end in a checkmate, timeout, or resignation
rem The original pgn files are created by downloading my full database of games from lichess.org and chess.com using En-Croissant

pgn-extract -Twchastitywhiterose -Tr1-0 chastitywhiterose_lichess.pgn -ochastebase_white_wins_lichess.pgn
pgn-extract -Tbchastitywhiterose -Tr0-1 chastitywhiterose_lichess.pgn -ochastebase_black_wins_lichess.pgn

pgn-extract -TwChastityWhiteRose -Tr1-0 chastitywhiterose_chesscom.pgn -ochastebase_white_wins_chesscom.pgn
pgn-extract -TbChastityWhiteRose -Tr0-1 chastitywhiterose_chesscom.pgn -ochastebase_black_wins_chesscom.pgn

pgn-extract chastebase_white_wins_lichess.pgn chastebase_white_wins_chesscom.pgn -ochastebase_all_wins_white.pgn
pgn-extract chastebase_black_wins_lichess.pgn chastebase_black_wins_chesscom.pgn -ochastebase_all_wins_black.pgn

