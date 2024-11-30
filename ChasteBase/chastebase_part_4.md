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

# More notes

The website for pgn-extract is here:

https://www.cs.kent.ac.uk/people/staff/djb/pgn-extract/

By reviewing the documentation, I noticed something.

https://www.cs.kent.ac.uk/people/staff/djb/pgn-extract/help.html#variations

I have been using the -x flag for selecting the variations I want, however, it might actually be better to use the -v flag.

The reason is that -x finds matches that reach a position regardless of the move order to get there. This resulted in picking up games that begin with c4 instead of d4. This made larger databases that take forever to load. Yes, I wanted lots of games but I want them to always start with d4 as the first move.

So by running this command on the file I created above, I can limit the results further.

pgn-extract chastebase_caissa_white_openings.pgn -Tr1-0 -vwhite_openings.txt -ochastebase_caissa_white_openings_v.pgn

pgn-extract chastebase_caissa_black_openings.pgn -Tr1-0 -vwhite_openings.txt -ochastebase_caissa_black_openings_v.pgn

So the reality is that I should have been using the -v flag instead of the -x flag for what I am doing. However, games that result in a position by a different move order ARE worth studying. I just don't need them for what I am trying to do. I want to make videos of my own wins as well as wins by the master players in these free databases.

# Big notes

Actually, ignore everything I said about. It turns out that the -v flag didn't help because I still have games that began with different move orders. More research is needed to filter these in the way I want.
