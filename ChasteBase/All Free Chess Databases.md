# All Free Chess Databases

Some of these sites may not be available at times, but I have downloaded these databases through En-Croissant. Caissabase  is hard to access because the site is so busy.

http://caissabase.co.uk/

https://ajedrezdata.com/

https://rebel13.nl/download/data.html

---

# Files needed to extract the two variants I want.

## Create a file named "french.txt" that has the following line:

	1. e4 e6

## Create a file named "queengambit.txt" that contains the following line:

	1. d4 d5 2. c4

Commands used to extract the data I need from these databases.

# Caissabase

pgn-extract caissabase.pgn -Tr0-1 -xfrench.txt -ochastebase_caissa_french_black_wins.pgn --checkmate

pgn-extract caissabase.pgn -Tr1-0 -xqueengambit.txt -ochastebase_caissa_queen_gambit_white_wins.pgn --checkmate

pgn-extract caissabase.pgn -Tr0-1 -xqueengambit.txt -ochastebase_caissa_queen_gambit_black_wins.pgn --checkmate


---

# MillionBase

pgn-extract MillionBase.pgn -Tr0-1 -xfrench.txt -ochastebase_million_french_black_wins.pgn --checkmate

pgn-extract MillionBase.pgn -Tr1-0 -xqueengambit.txt -ochastebase_million_queen_gambit_white_wins.pgn --checkmate

pgn-extract MillionBase.pgn -Tr0-1 -xqueengambit.txt -ochastebase_million_queen_gambit_black_wins.pgn --checkmate

---

# Ajedrez Data - Correspondence and OTB
# Doing both files together this time.

pgn-extract "Ajedrez Data - Correspondence.pgn" "Ajedrez Data - OTB.pgn" -Tr0-1 -xfrench.txt -ochastebase_ajedrez_french_black_wins.pgn --checkmate

pgn-extract "Ajedrez Data - Correspondence.pgn" "Ajedrez Data - OTB.pgn" -Tr1-0 -xqueengambit.txt -ochastebase_ajedrez_queen_gambit_white_wins.pgn --checkmate

pgn-extract "Ajedrez Data - Correspondence.pgn" "Ajedrez Data - OTB.pgn" -Tr0-1 -xqueengambit.txt -ochastebase_ajedrez_queen_gambit_black_wins.pgn --checkmate

# Further reading

All the information I used to learn how to use pgn-extract came from this site:

https://www.cs.kent.ac.uk/people/staff/djb/pgn-extract/

All of the the required flags are documented and I believe that proper use of this tool will save me hundreds of hours of filtering through games manually. That's why I write all of these things down because this information will save me and many other people tons of time and possibly money.


# Other possible openings

## caro-kann.txt

	1. e4 c6

## london.txt

	1. d4 d5 2. Bf4