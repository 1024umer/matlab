function_string = input("Enter your function: ", 's');
a_value = input("Enter the lower interval: ");
b_value = input("Enter the upper interval: ");
num_iterations = input("Number of iterations: ");
tolerance = input("Enter tolerance: ");

bisectionProgram(function_string, a_value, b_value, num_iterations, tolerance);

function [A] = bisectionProgram(f, a, b, num, err)
    if f(a)*f(b) < 0
        for i = 1:num
            c = (a + b) / 2;
            fprintf("Iteration %d, c = %.4f\n", i, c);
            if abs(c - b) < err || abs(c - a) < err
                break;
            end
            if f(a) * f(c) < 0
                b = c;
            elseif f(b) * f(c) < 0
                a = c;
            end
        end
    else
        fprintf("The chosen interval does not satisfy the conditions for the bisection method.\n");
    end
end
