% created 6/4/24. Updated 6/5

function tile_bag = generate_tile_bag(mode)
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

mode = input('Select game mode: ');


% loop until a valid mode is selected
valid_mode = false;

while ~valid_mode
    mode = input('Select game mode: ');
    
    if ismember(mode, [1, 2, 3])
        valid_mode = true;
    else
        disp('Please select a valid mode (1, 2, or 3)');
    end
   
end


%%% DEFINE TILE DISTRIBUTION
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
        remaining_letters = setdiff(alphabet, [vowels, common_consonants]);

        vowel_count = 54; % maintain high # of common vowels, though distribution may change
        common_count = 44;
        remaining_count = 46;

        % initialize letter_count
        letter_count = struct();

        % distribute vowels
        total_vowels = 0;

        for ii = 1:length(vowels) - 1       % for each of 4 vowels, assign a random #
            %COUNT = random # btwn 0 and remaining available vowels
            count = randi([0, vowel_count - total_vowels]); 

            % put 'COUNT' many 'A's (or other vowel) into letter_count
            letter_count.(vowels(ii)) = count;   

            % update # total_vowels
            total_vowels = total_vowels + count;
    
        end
        letter_count.(vowels(end)) = vowel_count - total_vowels;
       

        % distribute common letters
        total_common = 0;

        for ii = 1:length(common_letters) - 1
            count = randi([0, common_count - total_common]);
            % put 'COUNT' many of each common letter into letter_count
            letter_count.(common_letters(ii)) = count;

            % update # total_common
            total_common = total_common + count;
        end
        letter_count.(common_letters(end)) = common_count - total_common;

        
        % distribute remaining letters
        total_remaining = 0;
        for ii = 1:length(remaining_letters) - 1
            count = randi([0, remaining_count - total_remaining]);
            % put 'COUNT' many of each remaining letter into letter_count
            letter_count.(remaining_letters(ii)) = count;

            % update # total_remaining
            total_remaining = total_remaining + count;

        end
        letter_count.(remaining_letters(end)) = remaining_count - total_remaining;


end
