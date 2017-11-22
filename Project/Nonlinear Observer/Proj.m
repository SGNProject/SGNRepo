function [b_stim_dot] = Proj(b_stim, beta)

% M_b must be defined

%Parameter Projection function [11]


%b_stim_dot = zeros(3, 1);
M_b = 1;  % Valore di prova. Da rivedere in seguito
M_b_stim = 2;

    if ((norm(b_stim) >= M_b) && (b_stim'*beta > 0))
        
        b_stim_dot = (eye(3) - (cproj(b_stim,M_b,M_b_stim)*(b_stim*b_stim'))/norm(b_stim)^2)*beta;
        
    else 
        
        b_stim_dot = beta;
     
    end
    
end

