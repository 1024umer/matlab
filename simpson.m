function integral = simpsonRule(x_values, y_values)
    n = length(x_values);
    if mod(n, 2) == 0
        error('Simpson''s rule requires an odd number of data points.');
    end
    h = (x_values(end) - x_values(1)) / (n - 1);
    
    integral = (h / 3) * (y_values(1) + 4 * sum(y_values(2:2:end-1)) + 2 * sum(y_values(3:2:end-2)) + y_values(end));
end
