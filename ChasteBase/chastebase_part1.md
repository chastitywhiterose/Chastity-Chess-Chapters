# ChasteBase README Part 1

I created Chess database and I named it [ChasteBase](https://www.patreon.com/posts/chastebase-1-0-116762555). Creating the database was something of a challenge but was made easier by the fact that I have tools to enable me to filter through large lists of games.

What you are reading now is part 1 of a series where I document the necessary steps I took that eventually enabled me to create the database the way I want it.

## Step 0: The Workspace

I first created a folder on my Windows 11 laptop which I was going to be working in while I made my database.

### C:\ChasteBase

## Step 1:  Download the games.

I Downloaded all of my lichess.org and chess.com games using En-Croissant. It can download them and then I just have to copy over the PGN files from where the program stores them. En-Croissant can also be used for analyzing the database as well.

The location of databases used by en-croissant:

### C:\Users\chand\AppData\Roaming\org.encroissant.app\db

This gives me the files:

chastitywhiterose_lichess.pgn
chastitywhiterose_chesscom.pgn

They contain all of my games on these two platforms.  However, for simplicity, I will only be using the lichess file for my example commands. Whenever I need to update the list and just refresh the database on En-Croissant and when export the games to the same file so that they are included the next time that I run my commands

## Step 2: Download and install pgn-extract.

Really all I did to install it was choose a place to download it and add it to my path. Here is where I put it on my PC.

### C:\pgn-extract

## Step 3: Run commands to choose the games to the ones I am interested in.

The following commands will extract all the games I have won. The first extracts all my wins as white. The second extracts all my wins as black. However, due to the --checkmate flag, only games ending in a checkmate will be listed.

pgn-extract -Twchastitywhiterose -Tr1-0 chastitywhiterose_lichess.pgn --checkmate -ochastity_white_wins_lichess.pgn
pgn-extract -Tbchastitywhiterose -Tr0-1 chastitywhiterose_lichess.pgn --checkmate -ochastity_black_wins_lichess.pgn

These commands work the way they do because of the flags I used. The full documentation of pgn-extract can be accessed at the link below.

<https://www.cs.kent.ac.uk/people/staff/djb/pgn-extract/>

The idea of these steps is to be able to look at the games I won and see what I did right that helped me win. By including only games ending in a checkmate, I ensure that I didn't win only by resignation or my opponent running out of time.

I wrote this document for myself mainly but I will share it with everyone, especially my Chess students because I believe creating a personal database of games to review and analyze is actually extremely helpful for seeing which moves they have the most success with. In fact, this data could reveal that certain openings are more in line with how a person's brain operates. Or maybe they have practiced an opening more than others and we can see how often they started with it.

This was only step one of my quest to create ChasteBase. I needed to use my own games to test pgn-extract to see if it was possible to filter through the games in a reliable way. Eventually, my own games will be included in the database but I also want to include games of the greatest masters and my students. Analyzing Chess games can be fun. I also have some of the best software to use for analysis. I will be showing what software I like to use in my videos!

