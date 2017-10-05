function r = advance(mat,ind,val)
[nr,nc] = size(mat);
if(nr == 1)
    for n=nc:ind
        