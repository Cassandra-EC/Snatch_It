% created 6/4/24. Updated 6/5

function tile_bag = generate_tile_bag
    %%% the TILE_BAG contains all letters for 1 round. 1 by 1 tiles are
    %%% revealed (into the POOL) and can be played into the HOARD
    %%% 3 options: mini (75), normal (144), and wild/random (144)
    
    %%% INPUT: desired mode
    %%% OUPUT: one of three vectors containing letters of play


%%% SELECT TILE BAG
disp('TILE BAG OPTIONS: ');
disp('1 - DEFAULT');
disp('2 - MINI');
disp('3 - WILD');

%%% Loop until a valid mode is selected
% initialize mode
mode = input('Select game mode: ');
    while ~ismember(mode, [1, 2, 3])
        disp('Please select a valid mode (1, 2, or 3)');
        mode = input('Select game mode: ');
    end


%%% DEFINE TILE DISTRIBUTION
% initialize letter_count
letter_count = struct();

switch mode
    case 1  % default bag (144 tiles)
        letter_count = struct('E',18, 'A',13, 'I',12, 'O',11, 'T',9, 'R',9, ...
            'N',8, 'D',6, 'S',6, 'U',6, 'L',5, 'G',4, 'B',3, 'C',3, 'F',3, ...
            'H',3, 'M',3, 'P',3, 'V',3, 'W',3, 'Y',3, 'J',2, 'K',2, 'Q',2, ...
            'X',2, 'Z',2);



    case 2  % mini bag (78 tiles)
        letter_count = struct('E',9, 'A',7, 'I',6, 'O',5, 'T',5, 'R',5, ...
            'N',4, 'D',3, 'S',3, 'U',3, 'L',3, 'G',2, 'B',2, 'C',2, 'F',2, ...
            'H',2, 'M',2, 'P',2, 'V',2, 'W',2, 'Y',2, 'J',1, 'K',1, 'Q',1, ...
            'X',1, 'Z',1);



    case 3  % wild bag (144 randomized tiles)
        alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        vowels = 'AEIO';    
        common_letters = 'TRNDSU';   %include U, which occurs with similar frequency
        remaining_letters = setdiff(alphabet, [vowels, common_letters]);

        vowel_count = 54; % maintain high # of common vowels, though distribution may change
        common_count = 44;
        remaining_count = 46;

        %%% DISTRIBUTE VOWELS
            vowel_avg = floor(vowel_count / length(vowels));
            distribute_letters(vowels, vowel_count, vowel_avg);

        %%% DISTRIBUTE COMMON LETTERS
        common_avg = floor(common_count / length(common_letters));
        distribute_letters(common_letters, common_count, common_avg);

        %%% DISTRIBUTE REMAINING LETTERS
        remaining_avg = floor(remaining_count / length(remaining_letters));
        distribute_letters(remaining_letters, remaining_count, remaining_avg);
    end

    tile_bag = letter_count;

end


