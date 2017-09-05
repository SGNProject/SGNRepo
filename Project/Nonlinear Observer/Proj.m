function [b_stim_dot] = Proj(b_stim, beta)

% M_b must be defined

%Parameter Projection function [11]

M_b_stim = beta;
M_b = 1;  % Valore di prova. Da rivedere in seguito

    if ((norm(b_stim) >= M_b) && (b_stim(1)*beta > 0) && (b_stim(2)*beta > 0) && (b_stim(3)*beta >0))
        
        b_stim_dot = (eye(3) - (c(b_stim,M_b,M_b_stim)*(b_stim*b_stim'))/norm(b_stim)^2)*beta;
        
    else 
        
        b_stim_dot = beta;
     
    end
    
end

