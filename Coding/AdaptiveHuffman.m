function AdaptiveHuffman(varargin)
%% This procedure dynamically encode the characters into shorter bits.
%  It also show how at the receiving end the decoder decodes it.
%  This procedure by defualt assume that it will recieve only 24 
%  types of characters.
%  Input
%  optional max no of differect characters.
%%

if(nargin==0)
    x = 24 ;
else 
    x = varargin{1};
end

maxorder = 2*x + 1 ;

root = Node();
NYT = Node('NYT',0,0,NaN,NaN);



