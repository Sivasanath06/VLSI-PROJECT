% Given data for the first set
E_bath_total_1 = [7.2736e-003, 6.6205e-003, 6.0169e-003, 7.5883e-003, 6.3174e-003, 6.3218e-003, 6.9512e-003, 6.3541e-003, 6.3454e-003, 7.2057e-003, 7.1060e-003];
E_clk_total_1 = [-4.0198e-003, -3.7206e-003, -3.9311e-003, -2.6226e-003, -5.1173e-003, -3.5383e-003, -3.7693e-003, -2.2376e-003, -4.0614e-003, -1.8207e-003, -6.7032e-003];
E_Error_total_1 = [-6.4816e-004, -6.1358e-004, -4.8656e-004, -7.1448e-004, -5.2054e-004, -5.8140e-004, -5.9043e-004, -5.5141e-004, -5.7542e-004, -6.2586e-004, -6.6263e-004];

% Given data for the second set
E_bath_total_2 = [6.2177e-003, 6.7679e-003, 7.2011e-003, 7.4817e-003, 7.0952e-003, 8.1688e-003, 8.0967e-003, 8.6187e-003, 6.8502e-003, 7.3699e-003, 8.6124e-003];
E_clk_total_2 = [-1.2176e-003, -4.1296e-003, -7.2773e-003, -3.4411e-003, -5.0631e-003, -4.5935e-003, -6.2988e-003, -3.6922e-003, -5.7688e-003, -2.9664e-003, -7.3084e-003];
E_Error_total_2 = [-4.9575e-004, -6.0709e-004, -5.9288e-004, -6.7722e-004, -5.8440e-004, -7.5951e-004, -6.9420e-004, -7.7677e-004, -6.0918e-004, -6.1635e-004, -8.0465e-004];

% Time vector or data point index (assuming you have it)
time = 1:length(E_bath_total_1);

% Calculate power for both sets
t = 5/4;  % Set the time interval to 1 for simplicity
P_bath_1 = E_bath_total_1 / t;
P_clk_1 = E_clk_total_1 / t;
P_Error_1 = E_Error_total_1 / t;

P_bath_2 = E_bath_total_2 / t;
P_clk_2 = E_clk_total_2 / t;
P_Error_2 = E_Error_total_2 / t;

% Plot the power values for both sets
figure;

subplot(3, 1, 1);
plot(time, P_bath_1, 'r', 'DisplayName', 'Set 1 - P_bath');
hold on;
plot(time, P_bath_2, 'b', 'DisplayName', 'Set 2 - P_bath');
xlabel('Data Point Index');
ylabel('Power (eV/s)');
title('P_bath Comparison');
legend('Location', 'Northwest');
grid on;

subplot(3, 1, 2);
plot(time, P_clk_1, 'r', 'DisplayName', 'Set 1 - P_clk');
hold on;
plot(time, P_clk_2, 'b', 'DisplayName', 'Set 2 - P_clk');
xlabel('Data Point Index');
ylabel('Power (eV/s)');
title('P_clk Comparison');
legend('Location', 'Northwest');
grid on;

subplot(3, 1, 3);
plot(time, P_Error_1, 'r', 'DisplayName', 'Set 1 - P_Error');
hold on;
plot(time, P_Error_2, 'b', 'DisplayName', 'Set 2 - P_Error');
xlabel('Data Point Index');
ylabel('Power (eV/s)');
title('P_Error Comparison');
legend('Location', 'Northwest');
grid on;

hold off;
