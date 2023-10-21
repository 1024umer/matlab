function [xans] = LinearLagrangeInterpolation(X_values, Y_values, x_val)
n = length(x_val);
x = sym('x');

expression = (((x - X_values(2)) / (X_values(1) - X_values(2))) * Y_values(1)) + ...
    (((x - X_values(1)) / (X_values(2) - X_values(1)) * Y_values(2));

disp(expression);

for i = 1:n
    xans = (((x_val - X_values(2)) / (X_values(1) - X_values(2)) * Y_values(1)) + ...
        (((x_val - X_values(1)) / (X_values(2) - X_values(1)) * Y_values(2)));

    disp(xans);
end
end
