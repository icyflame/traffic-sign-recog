function [] = detectblob(fin_red, fin_blue)

if(size(fin_red)~=0)
    reply = askuser('Detect blobs in the red component?', 'Query');
    if(strcmpi(reply, 'Yes'))
        blob(fin_red);
    end
end

if(size(fin_blue)~=0)
    reply = askuser('Detect blobs in the blue component?', 'Query');
    if(strcmpi(reply, 'Yes'))
        blob(fin_blue);
    end
end