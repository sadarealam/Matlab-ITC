function mat = insertRow(mat,ind,val)
%  This function insert a row in the matrix at its place given by ind. 
%  mat original matrix
%  ind index after which row have to be inserted
%  val row to insert
[nr,~] = size(mat);
    for n=nr:-1:ind
        if(n==0)
            continue
        end
        mat(n+1:n+1,:) = mat(n:n,:);
    end
    mat(n+1:n+1,:) = val;

return
end
    