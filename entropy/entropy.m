function sum = entropy(x)
%x is row vectore containing probablities of message 
%sum of values of x should be 1.
siz = size(x);
nr = siz(1);
nc = siz(2);
if(nr~=1)
    disp('need a single row');
else
    sum = 0;
    for n=1:nc
        v=x(n);
        if(v~=0)                       
            sum = sum+x(n)*log2(1/x(n));
        end
    end
    return
end
    