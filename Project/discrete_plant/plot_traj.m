load('NAV.mat');
n = NN.Data(:,:);
figure(1)
plot3(n(:,1), n(:,2), n(:,3))
grid

xlabel('x [m]')
ylabel('y [m]')
zlabel('z [m]')
legend('True Trajectory')
set = [100 0 0.1; 0 100 10; 100 100 20; 300 150 50; 500 660 60; 400 800 100];

figure(2)
plot3(n(:,1), n(:,2), n(:,3), 'b-')

for i=1:6
    hold on
    plot3(set(i,1), set(i,2), set(i,3), 'kx')
end

xlabel('x [m]')
ylabel('y [m]')
zlabel('z [m]')

grid

est = est_pos.Data(:,:);
hold on
plot3(est(:,1), est(:,2), est(:,3), 'r--')

