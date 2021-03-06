%% trajectory


temp = 80;
Xc = zeros(temp,1);
Yc = zeros(temp,1);
Zc = zeros(temp,1);

% estimated
for i = 1:temp
    Xc(i) = COORD{i}(1);
    Yc(i) = COORD{i}(2);
    Zc(i) = COORD{i}(3);
end

% % ground truth
% gtcoord_xyz = load('freiburg2_gtcoord_xyz.mat');
% xyz = gtcoord_xyz.xyz;


figure(4)
c = linspace(1,10,length(Xc));
scatter3(Xc,Yc,Zc,20,c,'filled')
hold on
plot3(Xc,Yc,Zc)
hold off
title('direct')


% c = linspace(1,10,length(xyz(:,1)));
% scatter3(-xyz(:,1),-xyz(:,2),-xyz(:,3),10,c,'filled')
% hold off
% title('ground truth')
xlabel('x')
ylabel('y')
zlabel('z')