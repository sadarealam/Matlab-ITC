function [ val ] = ArithmeticEncoding( p,x,string )
%AIRTHMETICENCODING Encode the string using Arithmetic encoding
%   p is probablity
%   x is characters
%   string is string to encode
[~,nc] = size(p);
for n=1:nc
     p(n) = round(p(n),7,'significant');
end

format short g

function [p,x]=bubbleSortD(p,x)
[~,nc] = size(p);
for i=1:nc-1
    for j=i+1:nc
        if(p(i)==p(j))
            if(x(i)>x(j))
                temp = p(i);
                p(i) = p(j);
                p(j) = temp;
                tempx = x(i);
                x(i) = x(j);
                x(j) = tempx; 
            end
        end    
        if(p(i)<p(j))
            temp = p(i);
            p(i) = p(j);
            p(j) = temp;
            tempx = x(i);
            x(i) = x(j);
            x(j) = tempx;
        end
    end
end
return 
end

[p,x] = bubbleSortD(p,x);

map = containers.Map();

for n=1:nc
    map(x(n)) = n;
end

sum = 0 ;
pl = zeros(1,nc);
for n=1:nc
    sum = sum + p(n) ;
    pl(n) = sum ;
end

val = 0 ;
init = 0;
width = 1;
for n=1:length(string)
    i = map(string(n));
    c_e = pl(i);
    
    if(i==1)
        c_s = 0;
    else
        c_s = pl(i-1);
    end
    
    
    startlimit = init+(c_s*width);
    endlimit = init+(c_e*width);
    
    width = endlimit - startlimit ;
    init = startlimit ;  
    
    
    if(n == length(string))
        a = startlimit ;
        b = endlimit ;
        r = (b-a).*rand(1,1)+a;
        val = r ;
    end
end

end

