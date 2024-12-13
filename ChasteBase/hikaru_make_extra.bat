rem pgn-extract: Make a list of all wins in a database that end in a checkmate, timeout, or resignation
rem databases of games can be downloaded using En-Croissant
rem this specific example uses Grandmaster Hikaru's games.

set database=Hikaru_chesscom.pgn
set master=Hikaru

pgn-extract -Tw%master% -Tr1-0 %database% -o%master%_white_wins_chesscom.pgn
pgn-extract -Tb%master% -Tr0-1 %database% -o%master%_black_wins_chesscom.pgn

