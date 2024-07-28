% created 6/4/24; edited 6/6

%%% POOL collects the set of letters drawn from the tile_bag. User may only
%%% play letters from the POOL (into their HOARD). If the POOL exceeds 12,
%%% the user will be prompted to create a new word

% summary: add a new (random) tile from the tile_bag into the pool


function [pool, tile_bag] = add_to_pool(pool, tile_bag)
% Make sure to initialize the pool before adding!


[new_tile, tile_bag] = hit_me(tile_bag);
pool{end + 1} = new_tile;

disp(pool);
disp(tile_bag); % debugging measure

if isempty(tile_bag)
    disp('ROUND OVER - LAST CHANCE TO USE REMAINING LETTERS')


end

% 
% %%% INITIALIZE POOL
% function pool = initialize_pool()
%     pool = {};  % Initialize an empty pool
% end
