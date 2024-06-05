% created 6/5/24

function generate_wild_bag

alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
vowels = 'AEIO';    
common_letters = 'TRNDSU';   %include U, which occurs with similar frequency
remaining_letters = setdiff(alphabet, [vowels, common_letters]); %16 letters


vowel_count = 54; % maintain high # of common vowels, though distribution may change
common_count = 44;
remaining_count = 46;

vowel_avg = ceil(vowel_count / length(vowels));
common_avg = ceil(common_count / length(common_letters));
remaining_avg = ceil(remaining_count / length(remaining_letters));


% Distribute vowels
for ii = 1:length(vowels)
    if ii < length(vowels) && vowel_count > 0
        % Distribute random count within a narrow range
        [min_val, max_val] = tiny_range(vowel_avg, vowel_count);
        count = randi([min_val, max_val]);
    else
        % Assign remaining count to the last vowel
        count = vowel_count;
    end
    letter_count.(vowels(ii)) = count;
    vowel_count = vowel_count - count;   
end


% Distribute common letters

for ii = 1:length(common_letters)
    if ii < length(common_letters) && common_count > 0
        % Distribute random count [skewed high]
        [min_val, max_val] = tiny_range(common_avg, common_count);
        count = randi([min_val, max_val]);    
    else
        % Assign remaining count to last common letter
        count = common_count;
    end
    letter_count.(common_letters(ii)) = count;
    common_count = common_count - count;   
end


% Distribute remaining letters
for ii = 1:length(remaining_letters)
    if ii < length(remaining_letters) && remaining_count > 0
        % Distribute random count within narrow range
        [min_val, max_val] = tiny_range(remaining_avg, remaining_count);
        count = randi([min_val, max_val]);
    else
        % Assign remaining count to last remaining letter
        count = remaining_count;
    end
    letter_count.(remaining_letters(ii)) = count;
    remaining_count = remaining_count - count;
end


letter_count

end

