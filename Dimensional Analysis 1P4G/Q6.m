%Plotting two dimensionless groups to justify that it is permissible to
%ignore the effects of viscosity

% Setting up parameters
s_A = 1/36; % scale factor of model A
s_B = 1/9;  % scale factor of model B
Q_A = [.00158, .00234, .00292, .00342, .00385, .00424, .00493, .00552]; % volumetric flow rate of A
Q_B = [0, 0, 0.0507, .0589, .0663, .0728, .0845, .0945];                % volumetric flow rate of B
g = 9.81;       % gravitational acceleration
H = [0.05, .1, .15, .2, .25, .3, .4, .5]; % upstream head of full size spillway
H_A = s_A * H; % upstream head of model A
H_B = s_B * H; % upstream head of model B
D = 1; % depth
D_A = s_A * D; % depth of model A
D_B = s_B * D; % depth of model B

% Determining our dimensionless groups pi_1 and pi_2
pi_1A = Q_A./((g^0.5)*(H.^2.5)); 
pi_2A = D_A./H;

pi_1B = Q_B./((g^0.5)*(H.^2.5));
pi_2B = D_B./H;

% Plotting pi_2 against pi_1 for both model A and B
plot(pi_2A, pi_1A, "xr");
hold on;
plot(pi_2B, pi_1B, "xb");
xlim([0,1]);
ylabel(['$\frac{Q}{(g^0.5)(H^1.5)}$', ...
    char(10)], 'Interpreter', 'latex');
xlabel(['$\frac{D}{H}$', ...
    char(10)], 'Interpreter', 'latex');
