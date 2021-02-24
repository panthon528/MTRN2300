clear
clc
close all

x = [10.27392904 15.10574579 19.68504731 22.42152397 24.50979757 29.7619107];
y = [2.08E-06 6.08E-06 2.41E-05 2.96E-04 5.63E-05 1.96E-05];

mu_e = 0.008097;
k = 20392411;
omega_n = 142.802;

fplot(@(x) (mu_e*((x*(2*pi))^2))/(k*sqrt((1-((x*(2*pi))/omega_n)^2)^2)+(2*0.005102*((x*(2*pi))/omega_n))^2),[10 30], 'b')
hold on
%plot (x, y,'r')
y = [100E-6 100E-6 100E-6 100E-6 100E-6 100E-6];
plot (x, y, 'g')
hold off

syms x
eqn = 100E-6 == (mu_e*((x*(2*pi))^2))/(k*sqrt((1-((x*(2*pi))/omega_n)^2)^2)+(2*0.005102*((x*(2*pi))/omega_n))^2)
S = vpasolve(eqn,x,[0 23])
S2 = vpasolve(eqn,x,[23 30])