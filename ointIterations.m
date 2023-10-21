function x_result = fixedPointIterationMethod(func, max_iterations, initial_x, tolerance)
    f_prime = diff(func(initial_x));

    if f_prime > 1
        error("Error: The derivative condition is not satisfied.");
    else
        x = initial_x;

        for i = 1:max_iterations
            x1 = func(x);

            if abs(x1 - x) < tolerance
                x_result = x1;
                break;
            end

            x = x1;
        end
    end
end
