clear;
close all;
clc;

%% MATTEO DANIELE 
% platform characteristics creation for cc_main example

% platformo position
GND_X = 0.0;
GND_Y = 0.0;
GND_Z = -5.0;

% rectangular platform base 
lx = 15;
% rectangular platform height
ly = 10;

% euler angles 
phi = -35.0;
theta = -15.0;
psi = 36.0;

%% ball mass, dimensions and initial conditions
% initial position
XB = -1.0;
YB = 1.0;
ZB = 5.0;
% initial velocity
VXB = 0.0;
VYB = 0.0;
VZB = 0.0;
% mass and moment of inertia
M_BALL = 14600;
R_BALL = 0.05;
I_BALL = (2/5)*M_BALL*(R_BALL^2);

%% platform_and_ball_characteristics.set useful for MBDyn

ID = fopen('platform_and_ball_characteristics.set','w');
fprintf(ID,'# platform characteristics \n');
fprintf(ID,strcat('set: real Platform_Base = ',num2str(lx),'; \n'));
fprintf(ID,strcat('set: real Platform_Height = ',num2str(ly),'; \n'));
fprintf(ID,strcat('set: real GND_X = ',num2str(GND_X),'; \n'));
fprintf(ID,strcat('set: real GND_Y = ',num2str(GND_Y),'; \n'));
fprintf(ID,strcat('set: real GND_Z = ',num2str(GND_Z),'; \n'));
fprintf(ID,strcat('set: real Phi_GND = ',num2str(phi),'*deg2rad; \n'));
fprintf(ID,strcat('set: real Theta_GND = ',num2str(theta),'*deg2rad; \n'));
fprintf(ID,strcat('set: real Psi_GND = ',num2str(psi),'*deg2rad; \n'));
fprintf(ID,'\n');
fprintf(ID,'# ball characteristics \n');
fprintf(ID,strcat('set: real XB = ',num2str(XB),'; \n'));
fprintf(ID,strcat('set: real YB = ',num2str(YB),'; \n'));
fprintf(ID,strcat('set: real ZB = ',num2str(ZB),'; \n'));
fprintf(ID,strcat('set: real VXB = ',num2str(VXB),'; \n'));
fprintf(ID,strcat('set: real VYB = ',num2str(VYB),'; \n'));
fprintf(ID,strcat('set: real VZB = ',num2str(VZB),'; \n'));
fprintf(ID,'\n');
fprintf(ID,strcat('set: real M_BALL = ',num2str(M_BALL),'; \n'));
fprintf(ID,strcat('set: real R_BALL = ',num2str(R_BALL),'; \n'));
fprintf(ID,strcat('set: real I_BALL = ',num2str(I_BALL),'; \n'));
fclose(ID);