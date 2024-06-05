% created 6/5/24

% quick function to help distribute letters in the 'wild' bag. 
function distribute_letters(letters, total_count, avg_count)

    for ii = 1:length(letters)
        count = min(randi([0, avg_count]), total_count);
        letter_count.(letters(ii)) = count;
        total_count = total_count - count;

    end