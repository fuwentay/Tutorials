F_D = [0.28, 0.55, 0.84, 1.20, 1.52, 2.0, 2.7, 3.3, 4.2, 5.0]; % array of drag
V = [10, 15, 20, 25, 30, 35, 40, 45, 50, 55]; % array of velocity
rho = 1.293; % density of air
nu = 1.48e-5; % kinematic viscosity of air
h_p = 1.5; % prototype height
w_p = 1.7; % prototype width
l_p = 4.5; % prototype length
s = 1/15; %scaling factor

C_D = (2*F_D./(V.^2))/(rho*h_p*w_p*s^2); % drag coefficient
Re = (V*l_p*s)/nu; % reynold's number

plot(Re, C_D)
ylabel('Coefficient of Drag');
xlabel("Reynold's Number");