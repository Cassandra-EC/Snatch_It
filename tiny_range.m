% created 6/5/24

%%% TINY_RANGE forms a minimum and maximum near the given 'avg' point
%%% around which you want to center. Will not exceed the maximum value and
%%% will not be sub-zero
function [minimum, maximum] = tiny_range(avg, total)
   
% How much to deviate from center value?
deviation = floor(avg/2);

maximum = avg + deviation;
minimum = avg - deviation;

if maximum > total
    maximum = total;
end

if minimum < 0
    minimum = 0;
end


end

