% created 6/5/24

%%% Generate a random integer that skews high within a given range. Used
%%% for wild_bag so there are more instances of high values (and fewer 0s)

function skewed_int = high_randi(min_val, max_val, skew_factor)
    % Generate random number from the gamma distribution
    shape_param = 1 + skew_factor / 10; % Adjust shape parameter based on skew_factor
    scale_param = 10; % Adjust scale parameter as needed
    gamma_rnd = gamrnd(shape_param, scale_param);

    % Map the gamma random number to the desired range
    skewed_int = round(gamma_rnd) + min_val;

    % Ensure the generated value falls within the specified range
    skewed_int = max(min(skewed_int, max_val), min_val);
end