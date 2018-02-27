function c_out = cproj(b_stim,M_b,M_b_stim)

    val= ( (norm(b_stim,2) )^2 - M_b^2)/(M_b_stim^2 - M_b^2);
    
    c_out = min(1, val);
end

