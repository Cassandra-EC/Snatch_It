function SCOWL_dictionary = load_dictionary(filename)
%%% SUMMARY: open dictionary 'en_US.dic' sourced from SCOWL

%%% open SCOWL dictionary
fid = fopen('en_US.dic', 'r');
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
    SCOWL_dictionary{ii} = upper(parts{1}); %convert all parts to uppercase
end


% Remove duplicates (if any)
    SCOWL_dictionary = unique(SCOWL_dictionary);



end
