% created 6/9/24
function is_valid = is_valid_word(new_word, min_length)
%%% SUMMARY: confirm if a given word is valid in the SCOWL dictionary

% convert to uppercase
new_word = upper(new_word);

%{
1) is it enough letters
2) is it using available letters [only]
3) is it a valid English word ***
%}

%%% 1) CONFIRM PRESENCE IN DICTIONARY
if is_member(new_word, dictionary)
    is_valid = true;
else
    error('Invalid word. Confirm spelling or the existence of your word in ' ...
        'the ENABLE scrabble dictionary');
end

%%% 2) CONFIRM LENGTH
if length(new_word) >= min_length
    is_valid = true;
else
    error(['Too short. Confirm word length is greater than minimum length ' ...
        'in settings']);
end

%%% 3) CONFIRM USES AVAILABLE LETTERS
if 

end



end