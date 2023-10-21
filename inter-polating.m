data_points = [2, 5];
values = [1.5, 4.0];

query_points = [3];

interpolated_values_linear = interp1(data_points, values, query_points, 'linear');

disp('Query Points (query_points):');
disp(query_points);

disp('Interpolated Values (Linear):');
disp(interpolated_values_linear);