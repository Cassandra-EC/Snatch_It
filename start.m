% created 6/6/24

function start_round = start

start_round = 1;
tile_bag = generate_tile_bag;
pool = {};

% do this as many times as user clicks
[pool, tile_bag] = add_to_pool(pool, tile_bag);
disp(pool);
