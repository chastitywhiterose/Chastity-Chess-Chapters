rem A script to extract all games in 2024 where I won on lichess.org
rem These commands find all the times I won by checkmate by playing either white or black

pgn-extract -Twchastitywhiterose -Tr1-0 -xqueengambit.txt lichess_chastitywhiterose_2024.pgn -olichess_chastitywhiterose_2024_white_queen_gambit.pgn --checkmate

pgn-extract -Tbchastitywhiterose -Tr0-1 -xqueengambit.txt lichess_chastitywhiterose_2024.pgn -olichess_chastitywhiterose_2024_black_queen_gambit.pgn --checkmate
