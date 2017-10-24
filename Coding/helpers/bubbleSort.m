function [p,x]=bubbleSort(p,x)
[~,nc] = size(p);
for i=1:nc-1
    for j=i+1:nc
        if(p(i)>p(j))
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