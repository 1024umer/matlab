function [result]  = falsePositionMethod(equation, interval_start, interval_end, max_iterations, tolerance)
    if equation(interval_start) * equation(interval_end) < 0 && interval_start < interval_end
        for iteration = 1:max_iterations
            approximation = (interval_start * equation(interval_end) - interval_end * equation(interval_start)) / (equation(interval_end) - equation(interval_start));
            fprintf("Iteration %d = %.4f ", iteration, approximation);
            
            if abs(equation(approximation)) < tolerance
                break;
            end
            
            if equation(interval_start) * equation(approximation) < 0
                interval_end = approximation;
            elseif equation(interval_end) * equation(approximation) < 0
                interval_start = approximation;
            end
        end
    end
end
