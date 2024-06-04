# Snatch_It
I’ve based this project on a word game I play with my family, referred to as ‘snatch it’. It’s an anagram-creation game that involves uncovering letters, one at a time, from a set batch and using these to either create new words (e.g. t, c, a → ‘cat’ or ‘act’) or ‘steal’ previous words through the addition of a new letter/letters (e.g. adding s → ‘cast’). New letters may not be used to form plurals, and must not use the previous root word. One continues, creating new words or modifying existing ones, until all letters are revealed.

I’d like to create an online, solitaire version of this game with customizable features like the number of starting letters, minimum word length, a timer, etc. I also want to create a more advanced scoring system that allows the player to quantify their performance. The game is usually scored according to who has the most words at the end, but my program will also take into account word length, letter difficulty, and even total time taken.

The challenge here will be to create an error-free, successful gameplay experience. Depending on the ease of game setup (which may be trickier than expected!) I would also like to play around with app creation.


Categories/bins:
Pool: uncovered, ‘loose’ letters not yet incorporated into words. # remaining letters also shown.
Hoard: valid words found by the player
Time: running stopwatch per round, toggled on/off according to preference
Settings: choosing word length, total starting letters, etc
Maybe also other features (time depending); e.g. color background
History: statistics (avg word length, total score, score per word, etc.) from prior rounds

Gameplay:
Start of game
Player presses a button to initiate gameplay
Letters uncovered one at a time in the pool
**May establish a limit; if more than (for example) 20 letters are in the pool, player will be prompted to form a new word
Playing a word
Select ‘new’ or ‘steal’ (perhaps with 1 vs 2) and type in the new word
If valid, this word is added to the hoard
End of game
Once either all letters are used or the player chooses to end the round, time stops and points are counted

Customization:
Minimum word length. Default is three, but this can be increased to affect difficulty of play
Number of total starting letters. Default (in my own gameplay) is 144, though I may change this. Increase/decrease will affect the length of play
The ratio of letters will be predetermined, so each new letter is not just random 1/26 probability. This will be according to the Bananagrams tile distribution 
Hard mode
Invalid words incur a point penalty; time limit; ??


Validity:
1) New word uses only available letters, either solely from the pool or also from the hoard
2) New word is at least the minimum length chosen by the player
3) New word is not merely a plural of a hoard word
4) New word is valid in the English language, and not a proper noun


Point system:
Final words are scored according to length and letter difficulty (will be based on Boggle rules)
Remaining/unused letters are deducted from the player’s total score
May keep track of time playing with a stopwatch function? This may also be optional (toggled on/off) according to the player’s preference.
Successive games [if using the same rules, i.e. no change to total number of letters or to minimum word length] will keep track of previous scores. Perhaps can establish the player’s average time and score per round
