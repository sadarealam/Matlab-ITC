function conditional(p,rv)
siz=size(p);
nr=siz(1);
nc=siz(2);
columnsum = sum(p);
tp = p';
rowsum = sum(tp);

if(sum(columnsum)==1)
    %we have P(x,y) as matrix p;
    entropyxy(p);
end

if(sum(columnsum)==nc)
        %we have P(x/y) as matrix p;
        %we must have row vecter for y;
        entropyxby(p,rv);
end

if(sum(rowsum)==nr)
            %we have P(y/x) as matrix p;
            %we must have row vecter for x;
            entropyybx(p,rv);
end
      
end