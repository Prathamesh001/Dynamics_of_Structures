fig = figure(Name='Validation');
u = @(zeeta, w, wd, u_0, v, t, delay) exp(-zeeta*w*(t- delay)).*((u_0*cos(wd*(t-delay)))+((zeeta*u_0*w + v)/wd)*sin(wd*(t-delay)));
zeeta = 0.01527;
w = 13.90026;
wd = 13.8986;
u_0 = 0.0342;
v = 0;
delay = 4.133;
t = delay:0.01:32;
plot(t, u(zeeta, w, wd, u_0, v, t, delay), 'DisplayName', 'Analytical Displacement')
hold on
response = readtable("Initial_Displacement.xlsx", 'Sheet', 'Displacement Response', 'Range', 'A3');
response.Properties.VariableNames = {'Time (s)','Displacement (m)'};
plot(response.('Time (s)'), response.('Displacement (m)'), 'DisplayName', 'Measured Displacement');
xlabel('Time (s)');
ylabel('Displacement (m)');
title('Analytical vs Measured Solution for Initial Displacement');
grid on;

legend show;
