rem A script to extract all games in 2024 where I won on lichess.org
rem This script selects those that I won by Checkmate using the French Defense.

pgn-extract -Tbchastitywhiterose -Tr0-1 -xfrench.txt lichess_chastitywhiterose_2024.pgn -olichess_chastitywhiterose_2024_black_french.pgn --checkmate
