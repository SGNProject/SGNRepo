function [beta_dot_stim,p_n_dot,v_n_dot_stim,f_n_stim] = (delta,C,Init,J_stim,R_nb_stim)

delta_stim = 2*C*x_stim;

delta_ = (delta - delta_stim);

p_n_dot       = v_n_stim + K_pp*delta_;                % eq 14
beta_dot_stim = K_beta_p*delta_;                       % eq 15
v_n_dot_stim  = f_n_stim + g_n + K_v_p*delta_;         % eq 16
epsilon_dot   = -sigma*K_p*J_stim*f_b_imu* + K_epsP*delta_; % eq 17
f_n_stim      = R_nb_stim*f_b_imu + epsilon ;         % eq 18

end
