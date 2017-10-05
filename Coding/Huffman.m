function Huffman(p,o,m)
[~,nc] = size(p);
lv = p(nc);
slv = p(nc-1);
tsum = lv + slv ;

p(nc) = [] ;
p(nc-1) = [] ;

lm = m(nc:nc,:);
slm = m(nc-1:nc-1,:);

function o=concat(mi,o,b)
    for n = 1:nc
        if(mi(n)>0)
            o{n} = strcat(o{n},b);
        end
    end
end

o = concat(lm,o,'0');
o = concat(slm,o,'1');
    
nm = addrows(lm,slm);
m(nc:nc,:) = [];
m(nc-1:nc-1,:) = [] ;

for n=1:nc
    if(tsum<=p(n))
        advance(p,n,sum);
        advance(m,n,nm);
    end
end
