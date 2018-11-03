% clear;
% close all;
% clc;
% set(0,'defaulttextinterpreter','latex');

%%

datamov = dlmread('cc_out.mov');

ground = datamov(datamov(:,1)==0,:);
ball = datamov(datamov(:,1)==100,:);


% lx = 30;
% ly = 30;

R = eul2rotm([deg2rad(psi) deg2rad(theta) deg2rad(phi)]);

% gg = R*[lx -lx -lx lx
%         ly  ly -ly -ly
%         0  0  0  0];
%   


dt = 1e-3;
N = length(ball);

time = 0:dt:(N-1)*dt;

figure;

for k = 1:500:N
    
    gg = R*[lx -lx -lx lx
            ly  ly -ly -ly
            0  0  0  0] + ground(k,2:4)';
    
    plot3(ball(k,2),ball(k,3),ball(k,4),'om','MarkerFaceColor','k'); hold on;
    plot3(ball(1:k,2),ball(1:k,3),ball(1:k,4),'m');
    plot3(ground(k,2),ground(k,3),ground(k,4),'ok','MarkerFaceColor','r');
    plot3([gg(1,1) gg(1,2)],[gg(2,1) gg(2,2)],[gg(3,1) gg(3,2)],'k');
    plot3([gg(1,2) gg(1,3)],[gg(2,2) gg(2,3)],[gg(3,2) gg(3,3)],'k');
    plot3([gg(1,3) gg(1,4)],[gg(2,3) gg(2,4)],[gg(3,3) gg(3,4)],'k');
    plot3([gg(1,4) gg(1,1)],[gg(2,4) gg(2,1)],[gg(3,4) gg(3,1)],'k');
   
    title(strcat('time =',num2str(time(k)),' s'));
    xlabel('x [m]');
    ylabel('y [m]');
    zlabel('z [m]');
    grid on;
    drawnow;
    
    axis equal;
    hold off;
end
