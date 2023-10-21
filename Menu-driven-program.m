x_values = [2, 5];
y_values = [1.5, 4];
x_val = 5;

operation_menu = menu('Choose an operation', 'Linear', 'Quadratic', 'Cubic');

switch operation_menu
    case 1
        xans = LinearLagrangeInterpolation(x_values, y_values, x_val);
    case 2
        xans = QuadraticLagrangeInterpolation(x_values, y_values, x_val);
    case 3
        xans = CubicLagrangeInterpolation(x_values, y_values, x_val);
    otherwise
        disp('Try again');
end
