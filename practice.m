coefficients = [8, 0, 3, 0];

polynomial_roots = roots(coefficients);

disp(polynomial_roots);

symbolic_expression = poly2sym(coefficients);

disp(symbolic_expression);

syms x;

symbolic_expression2 = x^2 + 1;

polynomial_coefficients = sym2poly(symbolic_expression2);

disp(polynomial_coefficients);
