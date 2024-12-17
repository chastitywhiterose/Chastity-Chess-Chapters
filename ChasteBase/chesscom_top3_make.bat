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


pgn-extract Hikaru_white_wins_chesscom.pgn MagnusCarlsen_white_wins_chesscom.pgn Firouzja2003_white_wins_chesscom.pgn -otop3_master_white_wins.pgn

pgn-extract Hikaru_black_wins_chesscom.pgn MagnusCarlsen_black_wins_chesscom.pgn Firouzja2003_black_wins_chesscom.pgn -otop3_master_black_wins.pgn

