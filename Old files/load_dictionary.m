function dictionary = load_dictionary(filename)
%%% SUMMARY: load desired wordlist and separate words into individual cells
% for snatch_it, use the ENABLE dictionary

%%% open dictionary
fid = fopen(filename, 'r');
% failure to open returns error message
if fid == -1
    error('Could not open dictionary file');
end


% .dic entries into a cell array
words = textscan(fid, '%s', 'Delimiter', '\n');
words = words{1};

fclose(fid);


% process each new line
for ii = 1:length(words)
    parts = strsplit(words{ii}, {'/', ' '});
    dictionary{ii} = upper(parts{1}); %convert all parts to uppercase
end


% Remove duplicates (if any)
    dictionary = unique(dictionary);


end
