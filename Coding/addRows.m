function trow=addRows(r1,r2)
        [~,nc] = size(r1);
        trow = zeros(1,nc);
        pointer = 1;
        for i=1:nc
            if(r1(i)>0)
                trow(pointer) = r1(i);
                pointer = pointer+1;
            end
        end
        for i=1:nc
            if(r2(i)>0)
                trow(pointer) = r2(i);
                pointer = pointer+1;
            end
        end
        return
    end
