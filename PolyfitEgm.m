x_values = [-3, -2, -1, 0, 1, 2, 3];
y_values = [4.63, 2.11, 0.67, 0.09, 0.63, 2.15, 4.58];
coefficients = polyfit(x_values, y_values, 2);

disp(['Coefficients of the quadratic polynomial: ', num2str(coefficients)]);
