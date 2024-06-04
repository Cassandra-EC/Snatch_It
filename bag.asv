% created 6/4/24

function bag
    %%% the BAG contains all letters that will be used in a round. Letters are
    %%% uncovered one by one (into the POOL) and, once played, enter the HOARD.
    %%% Player may select the total # letters in the BAG at the start of a
    %%% round
    
    %%% INPUT: # total letters player wants in play
    %%% OUPUT: 1) set of letters w appropriate distribution, 2) one by one
    %%% removed to enter pool, 3) continue til none are left


letters_total = 144;

%{
Normal bananagrams distribution:

BIG-BAG = 144 letters
    2 J/K/Q/X/Z
    3 B/C/F/H/M/P/V/W/Y 
    4 Gs        5 Ls    6 D/S/Us
    8 Ns        8 Ns    9 T/Rs
    11 Os       12 Is   13 As   14 Es
                                     
                        

MINI-BAG = 75 letters
    1 J/K/Q/X/Z [5]
    2 G/B/C/F/H/M/P/V/W/Y [18; -> 25]
    3 L/D/S/Us [12; -> 37]
    4 Ns [4; -> 41]
    5 T/R/Os [15; -> 56]
    6 A/Is [12; -> 68]
    7 Es [7; -> 75]
 
    

% total number of letters in play (in hoard or pool)
letters_out = pool + hoard;
letters_left = letters_total - letters_out;





end