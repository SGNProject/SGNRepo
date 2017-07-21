function [C_dx] = C_dx_func(y,p)

    % y vector 
    % p matrix has row vectors
    %            (x,y,z) cols 
    %            m-rows are the numbers of the transponders
    % all variables are in navigation frame oh yeah! baby ;)
    
    [row,col] = size(p);
    [row_,col_] = size(y);
    
    % m-measure vector
    p_m = p(row);
    y_m = y(row);

    
    p_ = [];
    y_ = [];
    
    for i = 1 : 1 : row-1
    
        p_ = [p_ ; p_m - p(i,:)];
        y_ = [y_ ; y(i) - y_m];
        
    end
    
    C_dx = [p_ y_];

end