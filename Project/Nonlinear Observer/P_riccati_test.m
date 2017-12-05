%% System Matrices

A = zeros(10);

 A(1:3,5:7) = eye(3);
 A(5:7,8:10) = eye(3);
 
 B = zeros(10,3);

 B(8:10,1:3) = eye(3);

 C1 = zeros(4,6);
 
 
 %% Tuning Riccati Matrix
 
 P_ris = [];
 P = [];
 R = eye(3);
 %Q = diag([10^-3,10^-3,10^-3,10^-5,10^-8,10^-8,10^-8,10^-8,10^-8,10^-8]);
 Q= 5000*eye(10);
 
 
 for i=1:501
     
    C_dx = C_dx_sim(:,:,i);
    C = [2*C_dx C1];
 
    [P, L, G] = care(A, B, Q, R);
    P_ris = [P_ris; P];
    
 end