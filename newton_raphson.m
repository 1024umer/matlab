function root = newtonRaphsonMethod(equation, initialGuess, tolerance, maxIterations)
  syms x;  % Define x as a symbolic variable

  equation_sym = equation(x);

  for iteration = 1:maxIterations
    derivative_sym = diff(equation_sym, x);
    
    derivative_func = matlabFunction(derivative_sym);
    
    root = initialGuess - equation(initialGuess) / derivative_func(initialGuess);
    
    if abs(root - initialGuess) < tolerance
      break
    end
    
    initialGuess = root;
  end
  
  disp(['The root is: ', num2str(root)]);
end
