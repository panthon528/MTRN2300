% Part A
clc
w_BA = 6.8; %rad/s
AB = 0.248; %m
OB = 0.790; %m
OC = 1.047; %m
theata = 32;%deg

AO = sqrt(AB^2 + OB^2 - 2*AB*OB*cosd(theata));
alpha = asind(AB/AO*sind(theata));

%Q1
w_OC = AB/OB*w_BA*cosd(theata) %CW, so negative

% Q2
v_D = OC*w_OC*cosd(alpha) + OC*w_OC*sind(alpha)*tand(alpha)

% Part B
m = 1060; %kg
I = 12495.0444444; %kg*m^4
L = 10.3; %m
c = 144; %Ns/m
k = 109000; % N/m
g = 9.81;
amp = 0.1; %deg
w = 46; %rad/s

I_star = I;
c_star = 5/9*L^2*c;
k_star = 5/9*L^2*k + m*g*L/6;

%Q3
w_n = sqrt(k_star/I_star)
zeta = c_star/(2*I_star*w_n)

F_b = amp*pi/180*k_star*sqrt((1-(w/w_n)^2)^2 + (2*zeta*w/w_n)^2);

%Q4
X_b = F_b/sqrt((2*L*k/3)^2 + (2*L*c*w/3)^2) *1000 %mm