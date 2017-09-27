function ShannonFanoEncoding(p,x)
[nr,nc] = size(p);
bubbleSortD(p,x);

o={' ' , ' '};
for n=1:nc
    o{n} = ' ' ;
end

o=ShannonFano(p,o,1,nc);
disp(x);
disp(o);
end