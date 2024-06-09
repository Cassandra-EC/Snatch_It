function new_word = add_to_hoard(pool, hoard)

%{
 if x button pressed, -> entirely new word
if y button pressed, -> steal existing word
if not a real word, return error
if a real word, add to hoard **may later want real-time point totals

%}



if button1ispressed
    new text box, enter word
elseif button2ispressed
    steal_word(pool, hoard)
end

if real_word [check with a function?]
    actually add + remove
else 
    do not add
    dock




end
