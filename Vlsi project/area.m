% Define your data points
data = [0.493, 0.299, 0.319, 0.27,0.22];

% Create an x-axis range for your data points (assuming they are at x=1, x=2, x=3, x=4)
x = 1:5;

% Create a plot
plot(x, data, '-o'); % '-o' specifies a solid line with markers

% Add labels and a title
xlabel('Data Point Index');
ylabel('Value');
title('Plotting Areas of Various Research papers');

% You can also add a legend if needed
legend('Data');

 % To include all data points on the x-axis

% Show the grid
grid on;

% You can save the plot to a file if needed
% saveas(gcf, 'plot.png');
