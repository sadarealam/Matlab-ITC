function o=Huffman(p,o,m)
[~,nc] = size(p);
lv = p(nc);
slv = p(nc-1);
tsum = lv + slv ;

lm = m(nc:nc,:);
slm = m(nc-1:nc-1,:);

function o=concat(mi,o,b)
    [~,c] = size(mi);
    for n = 1:c
        if(mi(n)>0)
            o{mi(n)} = strcat(o{mi(n)},b);
        else 
            break
        end
    end
end

o = concat(lm,o,'0');
o = concat(slm,o,'1');

if(nc == 2)
    return
else
    nm = addRows(lm,slm);
    m(nc:nc,:) = [];
    m(nc-1:nc-1,:) = [] ;
    
    p(nc) = [] ;
    p(nc-1) = [] ;
        
    for n=nc-2:-1:0
        %disp(n);
        if(n==0)
            p=insertPriority(p,n,tsum);
            m=insertRow(m,n,nm);
            continue
        end
        if(tsum<=p(n))
            p=insertPriority(p,n,tsum);
            m=insertRow(m,n,nm);
            break
        end
        
    end
    
    o = Huffman(p,o,m);
    return 
end

end

    


