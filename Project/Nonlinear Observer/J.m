function [J_out] = J(t, R_nb_stim)

%Il risultato è una matrice 3x3

    q_b_1 = m_b_mag/norm(n_b_mag);
    
    q_b_2 = f_b_imu/norm(g_n);
    
    q_n_1 = m_n/norm(m_n);
    
    q_n_2 = f_n_stim/norm(g_n);
    
    E_b = [q_b_1, skew(q_b_1)*q_b_2, (skew(q_b_1)^2)*q_b_2];
    
    E_n = [q_n_1, skew(q_n_1)*q_n_2, (skew(q_n_1)^2)*q_n_2];
    
    J_out = (E_n - R_nb_stim*E_b)*(E_b)';

end

