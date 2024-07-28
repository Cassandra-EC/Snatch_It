% created 6/6/24

function start_round = start
% load ENABLE dictionary for use during game
dictionary = load_dictionary('ENABLE_dictionary.txt');


start_round = 1;
tile_bag = generate_tile_bag;
pool = {};

% x = 0;
% % do this as many times as user clicks
% if x == true
%     [pool, tile_bag] = add_to_pool(pool, tile_bag);
%     disp(pool);
% end


