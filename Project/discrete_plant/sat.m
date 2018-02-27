function Y = sat(X)
%SAT Saturation function 
%  with unit limits and unit slope

[rows, cols] = size(X);
Y = zeros(rows, cols);

for i=1:1:rows
    for j=1:1:cols
        
        if X(i,j)>1
           Y(i,j)=1;
        elseif X(i,j)<-1
           Y(i,j) = -1;
        else 
           Y(i,j) = X(i,j);
        end
        
    end
end    

end

