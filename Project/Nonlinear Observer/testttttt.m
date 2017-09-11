A = eye(10);
K = zeros(10,3); 
C = zeros(3,10);
B = zeros(10,3);

K(1:3,1:3) = eye(3);
K(4:6,1:3) = eye(3);
K(7:9,1:3) = eye(3);
C(1:3,1:3) = eye(3);
B= K;

% syms p_n_delta_stim0 p_n_delta_stim1 p_n_delta_stim2;
% syms v_n_stim0 v_n_stim1 v_n_stim2 f_n_stim0 f_n_stim1 f_n_stim2;
% syms beta_stim f_b_imu0 f_b_imu1 f_b_imu2;

syms X U;
x_stim = [p_n_delta_stim0 p_n_delta_stim1 p_n_delta_stim2  beta_stim];
X = [x_stim v_n_stim0 v_n_stim1 v_n_stim2 f_n_stim0 f_n_stim1 f_n_stim2];
U = [f_b_imu0 f_b_imu1 f_b_imu2];

f = (A - K*C)*X'+B*U';
h = C*X';

AL = jacobian(f, X); % Da rivedere (punto di lavoro)
BL = jacobian(f, U);
CL = jacobian(h, X);
DL = 0;