function result = fixedPointIterationMethod(f, initial_x, tolerance, max_iterations)
    f_prime = diff(f(initial_x));

    if f_prime > 1
        error("Error: The derivative condition is not satisfied.");
    else
        x = initial_x;

        for i = 1:max_iterations
            y = f(x);

            if abs(y - x) < tolerance
                result = y;
                break;
            end

            x = y;
        end
    end
end
