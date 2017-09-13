function [AL,BL,CL] = LinearizationFun(K,Cc,A,B)



syms p_n0 p_n1 p_n2;
syms v_n0 v_n1 v_n2;
syms f_n0 f_n1 f_n2;
syms f_b0 f_b1 f_b2;
syms beta_stim;

p_n = [p_n0 p_n1 p_n2];
v_n = [v_n0 v_n1 v_n2];
f_n = [f_n0 f_n1 f_n2];
f_b = [f_b0 f_b1 f_b2];



% p_n = p_n_delta_stim;
% v_n = v_n_stim;
% f_n = f_n_stim;
% f_b = f_b_imu;



x_stim = [p_n beta_stim];
X = [x_stim v_n f_n];
U = f_b;


f = (A - K*Cc)*X'+B*U';
h = Cc*X';

AL = jacobian(f, X); 
BL = jacobian(f, U);
CL = jacobian(h, X);


end