function [b_stim_dot] = Proj(b_stim, beta)

%Parameter Projection function [11]

    if (norm(b_stim) >= M_b) && (b_stim'*beta > 0)
        
        b_stim_dot = (eye(3) - (c(b_stim)*(b_stim*b_stim'))/norm(b_stim)^2)*beta;
        
    else 
        
        b_stim_dot = beta;
     
    end
    
end

