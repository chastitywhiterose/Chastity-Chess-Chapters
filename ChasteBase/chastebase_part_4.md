# ChasteBase README Part 4

## With all wins. Not separated by openings or filtered to only checkmates.

Some of these sites may not be available at times, but I have downloaded these databases through En-Croissant. Caissabase  is hard to access because the site is so busy.

http://caissabase.co.uk/

https://ajedrezdata.com/

https://rebel13.nl/download/data.html

---

For this project, I will be using a different method of sorting out the openings. I will also not be using the --checkmate flag for this because I need as many wins in the database as possible. Instead of a single opening per file, I will create files for the openings relevant to white or black and then combine those into the results.

# Files needed to extract the variants I want.

## Create a file named "white_openings.txt" that has the following lines:

	1. d4 d5 2. c4
	1. d4 Nf6 2. Bg5
	1. d4 d5 2. Bf4


Commands used to extract the data I need from these databases.

# Caissabase


pgn-extract caissabase.pgn -Tr1-0 -xwhite_openings.txt -ochastebase_caissa_white_openings.pgn

## Create a file named "black_openings.txt" that has the following lines:

	1. d4 d5 2. c4
	1. e4 e6

pgn-extract caissabase.pgn -Tr0-1 -xblack_openings.txt -ochastebase_caissa_black_openings.pgn

