function entropyxby(p,rv)
siz = size(p);
nr = siz(1);
nc = siz(2);
xy=[];
for n=1:nc
    xy(:,n:n)=p(:,n:n).*rv(n);
    
end
entropyxy(xy);
