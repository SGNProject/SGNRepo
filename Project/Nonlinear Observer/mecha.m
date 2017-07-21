function [p_dot, v_n_dot, R_nb_dot] = mechanisation(w_ib, f_b);


% mechanisation

Skew = zeros(3,3);
Skew(1,2) = -w_ib(3);
Skew(2,1) = w_ib(3);
Skew(1,3) = w_ib(2);
Skew(3,1) = -w_ib(2);
Skew(2,3) = -w_ib(1);
Skew(3,2) = w_ib(1);


p_dot = v_n;
v_n_dot = R_nb * f_b + g_n;
R_nb_dot = R_nb * Skew;