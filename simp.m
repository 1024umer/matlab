clc();
function_to_integrate = @(x) 1 ./ (1 + x.^2);
x_values = [0, 1, 2, 3, 4, 5, 6]; 
y_values = function_to_integrate(x_values);
integral_simpson = simpsonRule(x_values, y_values);
fprintf('Using Simpson''s Rule: Integral = %.4f\n', integral_simpson);
