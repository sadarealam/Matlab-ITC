function entropyxy(xy)
%xy is joint probablity matrix
%Here x should be treated as "Sender" and y as "Receiver" 
%Sum of all elements in the matrix should be 1
siz = size(xy);
nr = siz(1);

if sum(sum(xy)) == 1
    %Sum of all elements to make sure its one.
    py = sum(xy);
    %column wise sume of matrix gives the probablity row vector for y.
    epy = entropy(py);
    disp('Entropy H(y)');
    disp(epy);
    
    xyt=xy';    
    px = sum(xyt);
    %sum of transpose matrix gives probablity  row vector for x.
    epx = entropy(px);
    disp('Entropy H(x)');
    disp(epx);
    
    hxy=0;
    for r=1:nr
        %calculate entropy of a row in matrix xy at a time
        xy_r = xy(r:r,:);
        hxy = hxy + entropy(xy_r);        
    end
    
    disp('Entropy H(x,y)');
    disp(hxy);
    
    hybx = hxy-epx;
    disp('Entropy H(y/x)');
    disp(hybx);
    
    hxby = hxy-epy;
    disp('Entropy H(x/y)');
    disp(hxby);
    
    ixy = epx - hxby ;
    disp('Mutual Information I(x,y)');
    disp(ixy);
    
    if(ixy==epx && epx==epy && epy==hxy)
        disp('This is a noise free Channel');        
    end
    
    if(hxby==epx && hybx==epy)
        disp('This Channel has independent Input and Output');
    end
         
        
end