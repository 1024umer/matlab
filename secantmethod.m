function secantMethod(equation, guess1, guess2, max_iterations, tolerance)
  for i = 1:max_iterations
      approximation = (guess1 * equation(guess2) - guess2 * equation(guess1)) / (equation(guess2) - equation(guess1));
      fprintf("Iteration %d = %.8f ", i, approximation);
      
      if abs(approximation - guess2) < tolerance
          break;
      end
      
      guess1 = guess2;
      guess2 = approximation;
  end   
end
