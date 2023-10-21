clc();
x_values = [-3,-2,-1,0,1,2,3];
y_values = [4.63,2.11,0.67,0.09,0.63,2.15,4.58];
degree = 2; 
coefficients = polyfit(x_values, y_values, degree);
a2 = coefficients(1);
a1 = coefficients(2);
a0 = coefficients(3);
fprintf("The equation of the best-fitting polynomial is: y = %.4fx^2 + %.4fx + %.4f\n", a2, a1, a0);
