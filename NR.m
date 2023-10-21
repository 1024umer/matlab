function [root] = newtonRaphson(x_initial_guess, function_string, tolerance, max_iterations)
    x1 = x_initial_guess;
    f = inline(function_string);  % Convert the function string to a function handle
    
    for i = 1:max_iterations
        x = x1 - f(x1) / ff(x1);
        if abs(f(x)) <= tolerance
            root = x;
            break;
        end
        x1 = x;
    end
end
