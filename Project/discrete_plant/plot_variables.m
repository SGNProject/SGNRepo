



%%%%%%% PHI-ANGLE %%%%%%%%
phi_v = phi.data(:,:);
t = phi.time(:,:);
figure(1)
plot(t, phi_v, 'r'), 
grid
xlabel('Time [s]')
ylabel('\phi [rad]')
%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%% THETA-ANGLE %%%%%%%%
theta_v = theta.data(:,:);
figure(2)
plot(t, theta_v, 'g'), 
grid
xlabel('Time [s]')
ylabel('\theta [rad]')
%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%% PSI-ANGLE %%%%%%%%
psi_v = psi.data(:,:);
figure(3)
plot(t, psi_v, 'b'), 
grid
xlabel('Time [s]')
ylabel('\psi [rad]')
%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%% ALG_ESTIMATED %%%%%%%%
x_err_alg = estimated_variable_alg.data(:,1);
y_err_alg = estimated_variable_alg.data(:,2);
z_err_alg = estimated_variable_alg.data(:,3);
beta_err_alg = estimated_variable_alg.data(:,4);

figure(4)
plot(t, x_err_alg, 'r'),
xlabel('Time [s]')
ylabel('x error [m]')

figure(5)
plot(t, y_err_alg, 'g'), 
xlabel('Time [s]')
ylabel('y error [m]')

figure(6)
plot(t, z_err_alg, 'b'),
xlabel('Time [s]')
ylabel('z error [m]')

figure(7)
plot(t, z_err_alg, 'b'),
xlabel('Time [s]')
ylabel('beta error [m]')

grid
%%%%%%%%%%%%%%%%%%%%%%%%%


