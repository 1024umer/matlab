clc();
function_to_integrate = @(x) 1 ./ (1 + x.^2);
x_values = [0, 1, 2, 3, 4, 5, 6];
y_values = function_to_integrate(x_values);

integration_method = menu("Choose any rule ","Trapezoidal","Simpson 1/3 rule","Simpson 3/8 rule");

switch integration_method
    case 1
        integral_trapz = trapz(x_values, y_values);
        fprintf("Using Trapezoidal Rule: Integral = %.4f\n", integral_trapz);
    case 2
        integral_simpson = simpsonRule(x_values, y_values);
        fprintf("Using Simpson's 1/3 Rule: Integral = %.4f\n", integral_simpson);
    case 3
        integral_simpson38 = simpson38Rule(x_values, y_values);
        fprintf("Using Simpson's 3/8 Rule: Integral = %.4f\n", integral_simpson38);
    otherwise
        fprintf("Wrong entry");
end
