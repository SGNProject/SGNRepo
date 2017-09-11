function [AL,BL,CL,U] = LinearizationFun(f_b_imu,p_n_delta_stim,beta_stim, v_n_stim, f_n_stim, K, C, A,B)

syms p_n_delta_stim beta_stim v_n_stim f_n_stim f_b_imu;
syms A K C;

x_stim = [p_n_delta_stim beta_stim];
X = [x_stim v_n_stim f_n_stim];
U = f_b_imu;
f = (A - K*C)*X'+B*U';
h = C*X';

AL = jacobian(f, X); % Da rivedere (punto di lavoro)
BL = jacobian(f, U);
CL = jacobian(h, X);


U = U';
end