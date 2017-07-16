function [delta] = delta_func(y,p,p0)

    % y vector 
    % p matrix has row vectors
    %            (x,y,z) cols 
    %            m-rows are the numbers of the transponders
    % all variables are in navigation frame oh yeah! baby ;)
    % z is a col vector of scalars
    
    [row,col] = size(p);
    [row_,col_] = size(y);
    
    
   
    %defining los vector
    
    for i = 1:1:row
        
       p_los(i,:) = p(i,:) - p0;
       z(i) = y(i)^2 - norm(p_los(i,:))^2;
        
    end    
    
    for i = 1:1:row-1
       
        delta(i) = z(i) - z_m ; %amm fenito
        
    end

end