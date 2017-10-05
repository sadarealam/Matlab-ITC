function mat = insertPriority(mat,ind,val)
%  This function insert element in the vector at its place given by ind. 
%  mat original vectore or matrix
%  ind index after which element have to be inserted
%  val value to insert
[~,nc] = size(mat);

    for n=nc:-1:ind
        if(n==0)
            continue
        end
        mat(n+1) = mat(n);
    end
    mat(ind+1) = val;  

return
end
    