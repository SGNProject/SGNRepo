load('acceleration.mat')
f_b = acc.Data;

load ('angular_velocity.mat');
w_ib = av.Data;


Ts = 1/100; % sampling time
g_n = [0 0 9.81]';

l = length(f_b);

R_nb_k = eye(3,3);
R_nb_z = zeros(3,3);

v_n_k = zeros(3,1);
p_n_k = zeros(3,1);

P = zeros(l,3);
Skew = zeros(3,3);
R = zeros(l*3,3);

% ###############################

for i=1:1:l
    
    Skew = skew(w_ib(i,:)');

    v_n_k = Ts * ( R_nb_k * f_b(i,:)' + g_n) + v_n_k; 
    
    if i ~= 1
        R_nb_k = Ts * R_nb_k * Skew + R_nb_k;
    else
        R_nb_k = Ts * R_nb_k * Skew + R_nb_z;
    end
    
    p_n_k = v_n_k * Ts + p_n_k;
    
    P(i,:) = p_n_k;
    R(3*i-2:3*i,:) = R_nb_k;
end