function HuffmanEncoding(p,varargin)
% This function accept a row vectore with probablities of occurence
% of different messages.
% Optional second argument is name or character of the message.
[~,nc] = size(p);
if(nargin==1)
    x = 1:1:nc ;
else 
    x = varargin{1};
end

% include helper function from 'helpers' dir .
addpath(genpath('helpers'))

% Following lines will initialize a output vectore.
% This is required for compatblity reason.
o={' ' , ' '};
for n=1:nc
    o{n} = ' ' ;
    p(n) = round(p(n),4,'significant');
end

% Sort the probablity and message symbol according there probablity.
[p,x] = bubbleSortD(p,x);


% This is just say Mark Matrix . Used to store the message index of   
% reductions . just to make back traversal easy.
m = zeros(nc) ;
for n=1:nc
    m(n) = n ;
end

% This actually execute the Huffman algorithm.
% Parameters are as follows
% p probablity vectore(Sorted)
% o output vectore
% m mark matrix(See above line no 24)
o=Huffman(p,o,m);

% The output vecter have the code but they are in forword order.
% This will flip the individual code in output vector.
for n=1:nc
    o{n} = flip(o{n});
end

%Output of result
for n=1:nc
    output = [x(n),p(n),o(n)];
    disp(output);
end