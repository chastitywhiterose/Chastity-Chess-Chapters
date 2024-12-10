# ChasteBase README Part 5

The location of databases used by en-croissant:

### C:\Users\chand\AppData\Roaming\org.encroissant.app\db

pgn-extract -Twchastitywhiterose -Tr1-0 chastitywhiterose_lichess.pgn --checkmate -ochastity_white_wins_lichess.pgn
pgn-extract -Tbchastitywhiterose -Tr0-1 chastitywhiterose_lichess.pgn --checkmate -ochastity_black_wins_lichess.pgn

---


MagnusCarlsen

pgn-extract -TwMagnusCarlsen -Tr1-0 MagnusCarlsen_chesscom.pgn --checkmate -oMagnusCarlsen_white_wins.pgn
pgn-extract -TbMagnusCarlsen -Tr0-1 MagnusCarlsen_chesscom.pgn --checkmate -oMagnusCarlsen_black_wins.pgn


pgn-extract caissabase.pgn -Tr1-0 -xwhite_openings.txt -ochastebase_caissa_white_openings.pgn



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
