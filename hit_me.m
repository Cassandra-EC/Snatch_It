% created 6/5/24

%%% HIT_ME returns 1 letter from the chosen tile_bag. This new letter
%%% enters the 'POOL' and can be played into the 'HOARD'

function [new_letter, tile_bag] = hit_me(tile_bag)


letters = fieldnames(tile_bag);
num_letters = numel(letters);

% error once no tiles remain
if isempty(letters)
    error('No tiles remaining');
end

%%% DRAW A NEW, RANDOM LETTER FROM TILE BAG
% generate random index within range of possible letters left
idx = randi(num_letters);

% draw letter according to random index value
drawn_letter = letters{idx};

%%% REMOVE DRAWN LETTER FROM TILE BAG
% subtract drawn letter from tile bag
tile_bag.(drawn_letter) = tile_bag.(drawn_letter) - 1;

% if none of a letter is left, remove its field from tile bag
if tile_bag.(drawn_letter) == 0
    tile_bag = rmfield(tile_bag, drawn_letter);
end


%%% RETURN NEW LETTER
new_letter = drawn_letter;




end