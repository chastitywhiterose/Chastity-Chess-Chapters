pgn-extract -Twchastitywhiterose -Tr1-0 chastitywhiterose_lichess.pgn -ochastebase_white_wins_lichess.pgn
pgn-extract -Tbchastitywhiterose -Tr0-1 chastitywhiterose_lichess.pgn -ochastebase_black_wins_lichess.pgn

pgn-extract -TwChastityWhiteRose -Tr1-0 chastitywhiterose_chesscom.pgn -ochastebase_white_wins_chesscom.pgn
pgn-extract -TbChastityWhiteRose -Tr0-1 chastitywhiterose_chesscom.pgn -ochastebase_black_wins_chesscom.pgn

pgn-extract chastebase_white_wins_lichess.pgn chastebase_black_wins_lichess.pgn chastebase_white_wins_chesscom.pgn chastebase_black_wins_chesscom.pgn -ochastebase_all_wins.pgn