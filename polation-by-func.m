x_values = [0, -2, 4];
y_values = [1, 5, 17];
interpolated_value = interp1(x_values, y_values, 2);

disp(['Interpolated value at x = 2 is: ', num2str(interpolated_value)]);
