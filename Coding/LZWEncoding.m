function [ output ] = LZWEncoding( chars,string )
%LZWENCODING encode the string using LZW encoding technique
%   chars is string cotaining unique character used in 'string'
%   'string' is the string to encode

map = containers.Map();
for n=1:length(chars)
    map(chars(n)) = n-1 ;
end

output = '' ;
n = 1 ;
while n<=length(string)
    s = n;
    key = string(s);
    out = '' ;
    while true   
        if isKey(map,key)              
            out = map(key); 
            n = n+1;
            if n-1 == length(string)
                c = size(map,1);
                map(key) = c ;
                output = strcat(output,num2str(out));            
                break ;
            end            
            key = string(1,s:n);
        else            
            c = size(map,1);
            map(key) = c ;
            output = strcat(output,num2str(out),'_');            
            break ;
        end
    end

end

return 
end


