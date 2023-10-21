function integral = simpson38Rule(x_values, y_values)
    n = length(x_values);
    if mod(n-1, 3) ~= 0
        error('Simpson''s 3/8 rule requires a number of data points that is a multiple of 3.');
    end
    
    h = (x_values(end) - x_values(1)) / (n - 1);
    
    integral = (3 * h / 8) * (y_values(1) + 3 * sum(y_values(2:3:end-2)) + 3 * sum(y_values(3:3:end-1)) + 2 * sum(y_values(4:3:end-3)) + y_values(end));
end
