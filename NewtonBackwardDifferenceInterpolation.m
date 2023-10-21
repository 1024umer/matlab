function interpolated_value = NewtonBackwardDifference(x_values, y_values, x_val)
    n = length(x_values); % number of data points
    h = x_values(2) - x_values(1);
    difference_table = zeros(n, n); % difference table in matrix form
    difference_table(:, 1) = y_values; % first column consists of y values

    for j = 2:n
        for i = j:n
            difference_table(i, j) = difference_table(i, j - 1) - difference_table(i - 1, j - 1);
        end
    end

    coefficient = difference_table(n, n);
    for k = n - 1:-1:1
        p = poly(x_values(1)) / h;
        p(2) = p(2) - (k - 1);
        coefficient = conv(coefficient, p) / k;
        m = length(coefficient);
        coefficient(m) = coefficient(m) + difference_table(k, k);
    }

    interpolated_value = polyval(coefficient, x_val);
    disp('The interpolated polynomial is:');
    disp(poly2sym(coefficient));
end
