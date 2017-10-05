function HuffmanEncoding(p,varargin)
%This function accept a row vectore with probablities of occurence
%of different messages.
%Optional second argument is name or character of the message.
[~,nc] = size(p);
if(nargin==1)
    x = 1:1:nc ;
else 
    x = varargin{1};
end

%Following lines will initialize a output vectore.
%This is required for compatblity reason.
o={' ' , ' '};
for n=1:nc
    o{n} = ' ' ;
    p(n) = round(p(n),4,'significant');
end

[p,x] = bubbleSortD(p,x);

m = zeros(nc) ;
for n=1:nc
    m(n) = n ;
end
o=Huffman(p,o,m);