function c_out = c(b_stim)

% who's M_b? and M_b_stim?

% Funzione utilizzata nella Proj

    val_comp = (norm(b_stim^2) - M_b^2)/(M_b_stim^2 - M_b^2);
    if val_comp > 1
        c_out = val_comp;
    else 
        c_out = 1;
    end
    c_out
end

