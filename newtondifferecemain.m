x_values = [0, 1, 2, 3, 4, 5];
fx_values = [-3, 3, 11, 27, 57, 107];

menu_options = {'Newton Forward Difference Interpolation', 'Newton Backward Difference Interpolation'};
choice = menu('Select an operation:', menu_options);

switch choice
    case 1
        point_of_approximation = input('Enter the point of approximation: ');
        result = NewtonForwardDifferenceInterpolation(x_values, fx_values, point_of_approximation);

        disp(['The approximation at the point is: ', num2str(result)]);
    case 2
        point_of_approximation = input('Enter the point of approximation: ');
        result = NewtonBackwardDifferenceInterpolation(x_values, fx_values, point_of_approximation);

        disp(['The approximation at the point is: ', num2str(result)]);
    case 3
        num_integration();
    otherwise
        disp('Invalid choice');
end
