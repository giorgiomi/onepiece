function final = nonzero_mean(matrix)
%NONZERO_MEAN means it means (along 2nd dimensions of matrix every nonzero value 
    sizeM = size(matrix);
    %ii = sizeM(1); jj = sizeM(2);
    final = zeros(sizeM(1),1);
    for ii = 1:sizeM(1)
        if matrix(ii,1) == 0
            final(ii) = final(ii-1);
            continue
        end
        count = 0;
        sum = 0;
        for jj = 1:sizeM(2)
            if matrix(ii,jj) ~= 0
                sum = sum + matrix(ii,jj);
                %display(sum);
                count = count + 1;
            end
            final(ii) = sum/count;
        end
    end
    
end


