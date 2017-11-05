function [ output ] = RunLenghtEncoding( a,varargin )
%RUNLENGHTENCODING Encode the input string by RunLengthEncoding Method
%   a is the string provided 
%   varargin[optional] to return value silently
output = '' ;
cur = a(1);
run = 1 ;
for n=2:length(a)    
    if cur==a(n)
        run = run +1 ;
    else 
        output = strcat(output,num2str(run),cur);
        cur = a(n);
        run = 1;
    end
    
    if n==length(a)
        output = strcat(output,num2str(run),cur);
        cur = a(n);
        run = 1;
    end
end

if(nargin==1)
    disp(output);
else 
    x = varargin{1};
    if x == 's'
        return
    end

end
end

